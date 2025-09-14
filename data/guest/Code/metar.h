/******************************************************************************\
|                                                                              |
|                                   metar.h                                    |
|                                                                              |
|******************************************************************************|
|                                                                              |
|        This module contains utilities for decoding and translating           |
|        METAR data.                                                           |
|                                                                              |
|******************************************************************************|
|          Copyright (c) 2014 Pilot Training Systems / Chris Johnson           |
\******************************************************************************/

class Metar {
public:
	
	//
	// methods
	//
	Metar();
	void parse(char *str);
	void convert();
	char* toString();
	void print();
	
	//
	// attributes
	//
	
	// Report type:
	// METAR for scheduled report or SPECI for special (unscheduled) report.
	//
	char *reportType;
	
	// Station identifier:
	// Four character ICAO location identifier.
	//
	char *stationIdentifier;

	// Date / time group:
	// All dates and times in UTC using a 24-hour clock; 
	// two-digit date and four-digit time; 
	// always appended with Z to indicate UTC.
	//
	char *dateTime;
	
	// Report modifier:
	// AUTO for an automated report or COR for a corrected observation.
	//
	char *reportModifier;
	
	// Wind direction and speed:
	// Direction in tens of degrees from true north (first three digits),
	// followed by wind speed in whole knots (next two digits)
	// if needed, append gusts as character G followed by maximum observed speed,
	// appended with KT to indicate knots.
	//
	char *wind;
	
	// Visibility:
	// Prevailing visibility in statute miles.
	//
	char *visibility;

	// Runway visual range:
	// A 10-minute RVR evaluation value in hundreds of feet is reported if 
	// prevailing visibility is < or = 1 mile or RVR < or = 6000 feet; 
	// always appended with FT to indicate feet; 
	// value prefixed with M or P to indicate value is lower or higher than the reportable RVR value. 
	//
	char **runwayVisualRange;

	// Weather phenomena:
	// Precipitation and other weather phenomena.
	//
	char **weatherPhenomena;

	// Sky conditions:
	// Cloud amount and height: CLR (In automated METAR reports only, no clouds detected below 12000 feet.); 
	// SKy Clear 0/8; FEW 1/8-2/8; SCattered 3/8-4/8; BroKeN 5/8-7/8; OVerCast 8/8; 
	// 3-digit height of base in hundreds of feet; followed by Towering CUmulus or CumulonimBus if present. 
	// For an observed sky: Vertical Visibility followed by vertical veisibility in hundreds of feet 
	// into the obscuration, example: VV004. More than 1 layer may be reported.
	//
	char **skyConditions;

	// Temperature / dew point:
	// Each is reported in whole degrees Celsius using two digits; 
	// values are separated by a solidus (/); sub-zero values are prefixed with an M (minus).
	//
	char *temperatureDewPoint;

	// Altimeter:
	// Altimeter setting (in U.S. reports) is always prefixed with an A indicating inches of mercury
	// reported using four digits: tens, units, tenths, and hundredths.
	//
	char *altimeter;

	// Remarks:
	// Remarks includes clarifying or augmenting data concerning elements in the 
	// body of the METAR, additive coded data and maintenance data.
	//
	char *remarks;

	// Type of automated station:
	// AO1 - automated station without a precipitation descriminator. 
	// AO2 - automated station with precipitation descriminator.
	//
	char *automatedStation;

	// Peak wind:
	// PK WND dddff(F)/(hh)mm; direction in tens of degrees, speed in whole knots, time in minutes after the hour. 
	// Only minutes after the hour is included if the hour can be inferred from the report.
	//
	char *peakWind;

	// Wind shift:
	// WSHFT followed by hours and minutes of occurrence. The term FROPA may be entered after the time 
	// if it is reasonably certain that the wind shift was a result of a frontal passage.
	//
	char *windShift;

	// Pressure changing:
	// PRESRR or PRESFR; pressure rising or falling rapidly at time of observation.
	//
	char *pressureChanging;

	// Sea level pressure:
	// SLPppp; sea level pressure reported for ppp in tens, units, and tenths of hPa.
	//
	char *seaLevelPressure;

	// Hourly precipitation:
	// Prrrr; in tens, units, tenths and hundredths of an inch since last regular hourly METAR. 
	// A trace is reported as P0000. 
	//
	char *hourlyPrecipitation;

	// 3 and 6 hour precipitation:
	// 6RRRR; precipitation amount, including water equivalent, to nearest 0.01 inches for past 6 hours 
	// reported in 00, 06, 12, and 18 UTC observations and for past 3 hours in 03, 09, 15, and 21 UTC observations. 
	// A trace is 60000. 
	//
	char *recentPrecipitation;

	// Hourly temperature and dew point
	// TsnTaTaTa snT'aT'aT'a; reported to nearest tenth of oC; 
	// sn: 1 if temperature or dew point below 0oC and 0 if temperature/dew point 0oC or higher. 
	//
	char *hourlyTemperatureDewPoint;

	// 6 hour maximum temperature
	// 1snTxTxTx; maximum temperature for past 6 hours reported to nearest tenth of degree Celsius; 
	// reported on 00, 06, 12, 18 UTC reports; 
	// sn = 1 if temperature below 0oC and 0 if temperature 0oC or higher.
	//
	char *maxTemperature;

	// 6 hour minimum temperature
	// 2snTnTnTn; minimum temperature for past 6 hours reported to nearest tenth of degree Celsius; 
	// reported on 00, 06, 12, 18 UTC reports; 
	// sn = 1 if temperature below 0oC and 0 if temperature 0oC or higher.
	//
	char *minTemperature;

	// 24 hour maximum and minimum temperature
	// 4snTxTx TxsnTnTnTn; maximum temperature for past 6 hours reported to nearest tenth of degree Celsius; 
	// reported on midnight local standard time reports; 
	// sn = 1 if temperature below 0oC and 0 if temperature 0oC or higher; 
	// e.g., 400461006 indicates a 24-hour maximum temperature of 4.6oC and a 24-hour minimum temperature of -0.6oC. 
	//
	char *maxMinTemperature;

	// Pressure tendency
	// 5appp; the character (a) and amount of change in pressure (ppp) in tenths of hPa for the past 3 hours.
	//
	char *pressureTendency;

	// Sensor status indicators
	// RVRNO: RVR missing; 
	// PWINO: precipitation identifier information not available; 
	// PNO: precipitation amount not available; 
	// FZRANO: freezing rain information not available; 
	// TSNO: thunderstorm information not available (may indicate augmenting weather observer not logged on); 
	// VISNO [LOC} visibility at second location not available, e.g. VISNO RWY06; 
	// CHINO [LOC}: (cloud-height- indicator) sky condition at secondary location not available, e.g., CHINO RWY06
	// 
	char **sensorStatusIndicators;

	// Maintenance check indicator
	// Maintenance is needed on the system.
	//
	char *maintenanceCheckIndicator;
};
