/******************************************************************************\
|                                                                              |
|                                  metar.cpp                                   |
|                                                                              |
|******************************************************************************|
|                                                                              |
|         module contains utilities for decoding and translating               |
|        METAR data.                                                           |
|                                                                              |
|******************************************************************************|
|          Copyright (c) 2014 Pilot Training Systems / Chris Johnson           |
\******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include "string.h"
#include "metar.h"
#include "string_utils.h"

Metar::Metar() {

	// initialize string arrays
	//
	this->reportType = NULL;
	this->stationIdentifier = NULL;
	this->dateTime = NULL;
	this->reportModifier = NULL;
	this->wind = NULL;
	this->visibility = NULL;
	this->runwayVisualRange = NULL;
	this->weatherPhenomena = NULL;
	this->skyConditions = NULL;
	this->temperatureDewPoint = NULL;
	this->altimeter = NULL;
	this->remarks = NULL;
	this->automatedStation = NULL;
	this->peakWind = NULL;
	this->windShift = NULL;
	this->pressureChanging = NULL;
	this->seaLevelPressure = NULL;
	this->hourlyPrecipitation = NULL;
	this->recentPrecipitation = NULL;
	this->hourlyTemperatureDewPoint = NULL;
	this->maxTemperature = NULL;
	this->minTemperature = NULL;
	this->maxMinTemperature = NULL;
	this->pressureTendency = NULL;
	this->sensorStatusIndicators = NULL;
	this->maintenanceCheckIndicator = NULL;
}

void Metar::parse(char *str) {

	// metar tokens are separated by spaces
	//
	char **tokens = strSplit(str, " ");

	if (tokens) {
		int count = 0;
		char *token;
		while ((token = tokens[count++]) != NULL) {
			// printf("token[%d] = %s\n", count, tokens[count]);

			// Report type
			//
			if (count == 1) {
				this->reportType = token;

			// Station identifier
			//
			} else if (count == 2) {
				this->stationIdentifier = token;

			// Date / time group
			//
			} else if (strEndsWith(token, "Z")) {
				this->dateTime = token;

			// Report modifier
			//
			} else if (strMatches(token, "AUTO") || strMatches(token, "COR")) {
				this->reportModifier = token;

			// Wind speed and direction
			//
			} else if (strEndsWith(token, "KT") || strEndsWith(token, "MPS")) {
				if (strContains(tokens[count], "V")) {

					// append variable wind direction
					//
					char *tokens2[3];
					tokens2[0] = token;
					tokens2[1] = tokens[count++];
					tokens2[2] = NULL;
					this->wind = strArrayToStr(tokens2, " ");
				} else {
					this->wind = token;
				}

			// Visibility
			//
			} else if (strEndsWith(token, "SM")) {
				this->visibility = token;

			// Runway visual range
			//
			} else if (strStartsWith(token, "R") && strContains(token, "/")) {
				this->runwayVisualRange = appendStrArray(token, this->runwayVisualRange);

			// Weather phenomena
			//
			} else if (strStartsWith(token, "-") || strStartsWith(token, "+") || strStartsWith(token, "VC") ||
				strMatches(token, "MI") || strMatches(token, "BL") ||
				strMatches(token, "BC") || strMatches(token, "SH") ||
				strMatches(token, "PR") || strMatches(token, "DR") ||
				strMatches(token, "TS") || strMatches(token, "FZ") ||
				strMatches(token, "DZ") || strMatches(token, "IC") || strMatches(token, "UP") ||
				strMatches(token, "RA") || strMatches(token, "PL") ||
				strMatches(token, "SN") || strMatches(token, "GR") ||
				strMatches(token, "SG") || strMatches(token, "GS") ||
				strMatches(token, "BR") || strMatches(token, "SA") ||
				strMatches(token, "FU") || strMatches(token, "HZ") ||
				strMatches(token, "VA") || strMatches(token, "PY") || strMatches(token, "DU") ||
				strMatches(token, "SQ") || strMatches(token, "FC") ||
				strMatches(token, "SS") || strMatches(token, "DS") || strMatches(token, "PO")) {
				this->weatherPhenomena = appendStrArray(token, this->weatherPhenomena);

			// Sky conditions
			//
			} else if (strStartsWith(token, "FEW") || strStartsWith(token, "SCT") ||
				strStartsWith(token, "BKN") || strStartsWith(token, "OVC") || 
				strStartsWith(token, "CLR") || strContains(token, "VV")) {
				this->skyConditions = appendStrArray(token, this->skyConditions);

			// Temperature / dew point
			//
			} else if (strContains(token, "/")) {
				this->temperatureDewPoint = token;

			// Type of automated station
			// 
			} else if (strMatches(token, "A01") || strMatches(token, "A02")) {
				this->automatedStation = token;

			// Altimeter
			//
			} else if (strStartsWith(token, "A")) {
				this->altimeter = token;

			// Remarks
			//
			} else if (strMatches(token, "RMK")) {

				// interpret all remaining tokens as remarks
				//
				this->remarks = strArrayToStr(&tokens[count], " ");
				break;

			// Peak wind
			// 
			} else if (strMatches(token, "PK")) {
				char *tokens2[4];
				tokens2[0] = token;
				tokens2[1] = tokens[count++];
				tokens2[2] = tokens[count++];
				tokens2[3] = NULL;
				this->peakWind = strArrayToStr(tokens2, " ");

			// Wind shift
			// 
			} else if (strMatches(token, "WSHFT")) {
				char *tokens2[3];
				tokens2[0] = token;
				tokens2[1] = tokens[count++];
				tokens2[2] = NULL;
				this->windShift = strArrayToStr(tokens2, " ");

			// Pressure changing
			// 
			} else if (strStartsWith(token, "PRES")) {
				this->pressureChanging = token;

			// Sea level pressure
			// 
			} else if (strStartsWith(token, "SLP")) {
				this->seaLevelPressure = token;

			// Sensor status indicators
			//
			} else if (strMatches(token, "RVRNO") || strMatches(token, "PWINO") ||
				strMatches(token, "PNO") || strMatches(token, "FZRANO") || 
				strMatches(token, "TSNO") || strMatches(token, "VISNO") || 
				strMatches(token, "CHINO")) {
				this->sensorStatusIndicators = appendStrArray(token, this->sensorStatusIndicators);

			// Hourly precipitation
			// 
			} else if (strStartsWith(token, "P")) {
				this->hourlyPrecipitation = token;

			// Hourly temperature and dew point
			// 
			} else if (strStartsWith(token, "T")) {
				this->hourlyTemperatureDewPoint = token;

			// 6 hour maximum temperature
			// 
			} else if (strStartsWith(token, "1")) {
				this->maxTemperature = token;

			// 6 hour minimum temperature
			// 
			} else if (strStartsWith(token, "2")) {
				this->minTemperature = token;

			// 24 hour maximum and minimum temperature
			// 
			} else if (strStartsWith(token, "4")) {
				this->maxMinTemperature = token;

			// Pressure tendency
			// 
			} else if (strStartsWith(token, "5")) {
				this->pressureTendency = token;

			// 3 and 6 hour precipitation
			// 
			} else if (strStartsWith(token, "6")) {
				this->recentPrecipitation = token;

			// Maintenance check indicator
			// 
			} else if (strMatches(token, "$")) {
				this->maintenanceCheckIndicator = token;
			}
		}
	}
}

float frand() {
	return (float)rand() / (float)RAND_MAX;
}

int getCloudCoverage(char *skyCondition) {
	if (strStartsWith(skyCondition, "VV")) {
		return 8;
	} else if (strStartsWith(skyCondition, "SKC") || strStartsWith(skyCondition, "CLR")) {
		return 0;
	} else if (strStartsWith(skyCondition, "FEW")) {
		if (frand() < 0.5) {
			return 1;
		} else {
			return 2;
		}
	} else if (strStartsWith(skyCondition, "SCT")) {
		if (frand() < 0.5) {
			return 3;
		} else {
			return 4;
		}
	} else if (strStartsWith(skyCondition, "BKN")) {
		float random = frand();
		if (random < 0.33) {
			return 5;
		} else if (random < .66) {
			return 6;
		} else {
			return 7;
		}
	} else if (strStartsWith(skyCondition, "OVC")) {
		return 8;
	} else {
		return NULL;
	}
}

int getTemperature(char* temperatureDewPoint) {
	char **substrings = strSplit(strClone(temperatureDewPoint), "/");
	char* temperatureStr = substrings[0];
	strReplaceChar(temperatureStr, 'M', '-');
	return atoi(temperatureStr);
}

int getDewPoint(char* temperatureDewPoint) {
	char **substrings = strSplit(strClone(temperatureDewPoint), "/");
	char* dewPointStr = substrings[1];
	strReplaceChar(dewPointStr, 'M', '-');
	return atoi(dewPointStr);
}

char* getCloudType(char *skyCondition, char* temperatureDewPoint) {
	char *cloudType;

	cloudType = new char[3];
	if (strStartsWith(skyCondition, "VV")) {
		strcpy(cloudType, "CU");
	} else if (strEndsWith(skyCondition, "TCU") || strEndsWith(skyCondition, "CB")) {
		strcpy(cloudType, "CB");
	} else if (temperatureDewPoint) {

		// infer cloud type based upon temperature and dew point
		//
		int temperature = getTemperature(temperatureDewPoint);
		int dewPoint = getDewPoint(temperatureDewPoint);
		if (dewPoint > 10 && temperature - dewPoint > 5) {
			strcpy(cloudType, "CU");
		} else {
			strcpy(cloudType, "ST");
		}	
	} else {
		strcpy(cloudType, "ST");
	}

	return cloudType;
}

char* convertSkyCondition(char *skyCondition, char *temperatureDewPoint) {
	char *str;

	// get cloud base height from sky condition
	//
	char cloudBaseHeight[4];
	if (strStartsWith(skyCondition, "VV")) {
		strncpy(cloudBaseHeight, &skyCondition[2], 3);
	} else {
		strncpy(cloudBaseHeight, &skyCondition[3], 3);
	}
	cloudBaseHeight[3] = '\0';
	
	// get cloud coverage fraction
	//
	char cloudCoverage[2];
	sprintf(cloudCoverage, "%d", getCloudCoverage(skyCondition));

	// get cloud type
	//
	char* cloudType = getCloudType(skyCondition, temperatureDewPoint);

	// concatenate strings
	//
	str = new char[7];
	sprintf(str, "%s%s%s", cloudCoverage, cloudType, cloudBaseHeight);

	return str;
}

void Metar::convert() {

	// convert sky contions from NOAA format
	//
	if (this->skyConditions) {
		for (int i = 0; i < strArrayLength(skyConditions); i++) {
			this->skyConditions[i] = convertSkyCondition(this->skyConditions[i], this->temperatureDewPoint);
		}
	}
}

char* Metar::toString() {
	char **array;
	char* str;
	const int arraySize = 256;
	int count = 0;

	// create and initialize array
	//
	array = new char*[arraySize * sizeof(char*)];
	for (int i = 0; i < arraySize; i++) {
		array[i] = NULL;
	}

	// add attributes to array
	//
	array[count++] = this->reportType;
	array[count++] = this->stationIdentifier;
	array[count++] = this->dateTime;
	array[count++] = this->reportModifier;
	array[count++] = this->wind;
	array[count++] = this->visibility;
	array[count++] = strArrayToStr(this->runwayVisualRange, " ");
	array[count++] = strArrayToStr(this->weatherPhenomena, " ");
	array[count++] = strArrayToStr(this->skyConditions, " ");
	array[count++] = this->temperatureDewPoint;
	array[count++] = this->altimeter;
	array[count++] = this->automatedStation;
	array[count++] = this->peakWind;
	array[count++] = this->windShift;
	array[count++] = this->pressureChanging;
	array[count++] = this->seaLevelPressure;
	array[count++] = this->hourlyPrecipitation;
	array[count++] = this->recentPrecipitation;
	array[count++] = this->hourlyTemperatureDewPoint;
	array[count++] = this->maxTemperature;
	array[count++] = this->minTemperature;
	array[count++] = this->maxMinTemperature;
	array[count++] = this->pressureTendency;
	array[count++] = strArrayToStr(this->sensorStatusIndicators, " ");
	array[count++] = this->maintenanceCheckIndicator;

	// add optional remarks to tail of string
	//
	if (this->remarks) {
		array[count] = new char[4];
		strcpy(array[count++], "RMK");
		array[count++] = this->remarks;
	}

	// replace nulls
	//
	for (int i = 0; i < count; i++) {
		if (array[i] == NULL) {
			array[i] = new char[1];
		}
	}

	str = strArrayToStr(array, " ");

	return str;
}

void Metar::print() {
	printf("Report type: %s\n", this->reportType);
	printf("Station identifier: %s\n", this->stationIdentifier);
	printf("Date/time: %s\n", this->dateTime);
	printf("Report modifier: %s\n", this->reportModifier);
	printf("Wind: %s\n", this->wind);
	printf("Visibility: %s\n", this->visibility);
	printf("Runway visual range: %s\n", strArrayToStr(this->runwayVisualRange, " "));
	printf("Weather phenomena: %s\n", strArrayToStr(this->weatherPhenomena, " "));
	printf("Sky conditions: %s\n", strArrayToStr(this->skyConditions, " "));
	printf("Temperature / dew point: %s\n", this->temperatureDewPoint);
	printf("Altimeter: %s\n", this->altimeter);
	printf("Remarks: %s\n", this->remarks);
	printf("Automated station: %s\n", this->automatedStation);
	printf("Peak wind: %s\n", this->peakWind);
	printf("Wind shift: %s\n", this->windShift);
	printf("Pressure changing: %s\n", this->pressureChanging);
	printf("Sea level pressure: %s\n", this->seaLevelPressure);
	printf("Hourly precipitation: %s\n", this->hourlyPrecipitation);
	printf("3 and 6 hour precipitation: %s\n", this->recentPrecipitation);
	printf("Hourly temperature and dew point: %s\n", this->hourlyTemperatureDewPoint);
	printf("6 hour maximum temperature: %s\n", this->maxTemperature);
	printf("6 hour minimum temperature: %s\n", this->minTemperature);
	printf("24 hour maximum and minimum temperature: %s\n", this->maxMinTemperature);
	printf("Pressure tendency: %s\n", this->pressureTendency);
	printf("Sensor status indicators: %s\n", strArrayToStr(this->sensorStatusIndicators, " "));
	printf("Maintenance check indicator: %s\n", this->maintenanceCheckIndicator);
}
