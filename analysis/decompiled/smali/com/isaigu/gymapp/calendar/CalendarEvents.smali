.class public Lcom/isaigu/gymapp/calendar/CalendarEvents;
.super Ljava/lang/Object;
.source "CalendarEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;
    }
.end annotation


# static fields
.field private static PERMISSION_REQUEST_CODE:I = 0x0

.field private static final RNC_PREFS:Ljava/lang/String; = "REACT_NATIVE_CALENDAR_PREFERENCES"

.field private static callback:Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;

.field private static context:Landroid/app/Activity;

.field private static dateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const/16 v0, 0x25

    sput v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->PERMISSION_REQUEST_CODE:I

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)I
    .locals 30
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "details"    # Ljava/util/Map;
    .param p2, "options"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 302
    sget-object v26, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    const-string v27, "GMT+8"

    invoke-static/range {v27 .. v27}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 304
    sget-object v26, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 305
    .local v5, "cr":Landroid/content/ContentResolver;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 307
    .local v15, "eventValues":Landroid/content/ContentValues;
    if-eqz p0, :cond_0

    .line 308
    const-string/jumbo v26, "title"

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_0
    const-string v26, "description"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 312
    const-string v27, "description"

    const-string v26, "description"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_1
    const-string v26, "location"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 316
    const-string v27, "eventLocation"

    const-string v26, "location"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_2
    const-string v26, "startDate"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 320
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v23

    .line 321
    .local v23, "startCal":Ljava/util/Calendar;
    const-string v26, "startDate"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 324
    .local v24, "type":Ljava/lang/Object;
    :try_start_0
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v26, v0

    if-eqz v26, :cond_13

    .line 325
    sget-object v27, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    const-string v26, "startDate"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 326
    const-string v26, "dtstart"

    invoke-virtual/range {v23 .. v23}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v23    # "startCal":Ljava/util/Calendar;
    .end local v24    # "type":Ljava/lang/Object;
    :cond_3
    :goto_0
    const-string v26, "endDate"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 337
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 338
    .local v9, "endCal":Ljava/util/Calendar;
    const-string v26, "endDate"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 341
    .restart local v24    # "type":Ljava/lang/Object;
    :try_start_1
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v26, v0

    if-eqz v26, :cond_14

    .line 342
    sget-object v27, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    const-string v26, "endDate"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 343
    const-string v26, "dtend"

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 353
    .end local v9    # "endCal":Ljava/util/Calendar;
    .end local v24    # "type":Ljava/lang/Object;
    :cond_4
    :goto_1
    const-string v26, "recurrence"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 354
    const-string v26, "recurrence"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static/range {v26 .. v29}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->createRecurrenceRule(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v22

    .line 355
    .local v22, "rule":Ljava/lang/String;
    if-eqz v22, :cond_5

    .line 356
    const-string v26, "rrule"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .end local v22    # "rule":Ljava/lang/String;
    :cond_5
    const-string v26, "recurrenceRule"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 361
    const-string v26, "recurrenceRule"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map;

    .line 363
    .local v21, "recurrenceRule":Ljava/util/Map;
    const-string v26, "frequency"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 364
    const-string v26, "frequency"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 365
    .local v18, "frequency":Ljava/lang/String;
    const-string v7, "PT1H"

    .line 366
    .local v7, "duration":Ljava/lang/String;
    const/16 v19, 0x0

    .line 367
    .local v19, "interval":Ljava/lang/Integer;
    const/16 v20, 0x0

    .line 368
    .local v20, "occurrence":Ljava/lang/Integer;
    const/4 v10, 0x0

    .line 370
    .local v10, "endDate":Ljava/lang/String;
    const-string v26, "interval"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 371
    const-string v26, "interval"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "interval":Ljava/lang/Integer;
    check-cast v19, Ljava/lang/Integer;

    .line 374
    .restart local v19    # "interval":Ljava/lang/Integer;
    :cond_6
    const-string v26, "duration"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 375
    const-string v26, "duration"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "duration":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 378
    .restart local v7    # "duration":Ljava/lang/String;
    :cond_7
    const-string v26, "occurrence"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 379
    const-string v26, "occurrence"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "occurrence":Ljava/lang/Integer;
    check-cast v20, Ljava/lang/Integer;

    .line 382
    .restart local v20    # "occurrence":Ljava/lang/Integer;
    :cond_8
    const-string v26, "endDate"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 383
    const-string v26, "endDate"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 385
    .restart local v24    # "type":Ljava/lang/Object;
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v26, v0

    if-eqz v26, :cond_15

    .line 386
    sget-object v27, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    sget-object v28, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    const-string v26, "endDate"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 394
    .end local v24    # "type":Ljava/lang/Object;
    :cond_9
    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v10, v2}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->createRecurrenceRule(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v22

    .line 395
    .restart local v22    # "rule":Ljava/lang/String;
    if-eqz v7, :cond_a

    .line 396
    const-string v26, "duration"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_a
    if-eqz v22, :cond_b

    .line 399
    const-string v26, "rrule"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .end local v7    # "duration":Ljava/lang/String;
    .end local v10    # "endDate":Ljava/lang/String;
    .end local v18    # "frequency":Ljava/lang/String;
    .end local v19    # "interval":Ljava/lang/Integer;
    .end local v20    # "occurrence":Ljava/lang/Integer;
    .end local v21    # "recurrenceRule":Ljava/util/Map;
    .end local v22    # "rule":Ljava/lang/String;
    :cond_b
    const-string v26, "allDay"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 405
    const-string v27, "allDay"

    const-string v26, "allDay"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Boolean;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_16

    const/16 v26, 0x1

    :goto_3
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 408
    :cond_c
    const-string/jumbo v26, "timeZone"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 409
    const-string v27, "eventTimezone"

    const-string/jumbo v26, "timeZone"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :goto_4
    const-string v26, "endTimeZone"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_18

    .line 415
    const-string v27, "eventEndTimezone"

    const-string v26, "endTimeZone"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :goto_5
    const-string v26, "alarms"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 421
    const-string v26, "hasAlarm"

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 424
    :cond_d
    const-string v26, "availability"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 425
    const-string v27, "availability"

    const-string v26, "availability"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    invoke-static/range {v26 .. v26}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->availabilityConstantMatchingString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 429
    :cond_e
    const-string v26, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1c

    .line 430
    const-string v26, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 431
    .local v12, "eventID":I
    invoke-static {v12}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->findEventById(I)Ljava/util/Map;

    move-result-object v13

    .line 433
    .local v13, "eventInstance":Ljava/util/Map;
    if-eqz v13, :cond_10

    .line 434
    const-string v26, "calendar"

    move-object/from16 v0, v26

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 436
    .local v11, "eventCalendar":Ljava/util/Map;
    const-string v26, "exceptionDate"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_19

    .line 437
    sget-object v26, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v0, v12

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    .line 439
    .local v25, "updateUri":Landroid/net/Uri;
    const-string v26, "sync"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_f

    const-string v26, "sync"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Boolean;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_f

    .line 440
    const-string v26, "calendar"

    move-object/from16 v0, v26

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Map;

    const-string v27, "id"

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->syncCalendar(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 441
    const-string v26, "source"

    move-object/from16 v0, v26

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const-string/jumbo v27, "type"

    move-object/from16 v0, v27

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    invoke-static/range {v25 .. v27}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->eventUriAsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 443
    :cond_f
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v5, v0, v15, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 479
    .end local v11    # "eventCalendar":Ljava/util/Map;
    .end local v25    # "updateUri":Landroid/net/Uri;
    :cond_10
    :goto_6
    const-string v26, "alarms"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 480
    const-string v26, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    const-string v26, "alarms"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/List;

    move/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v5, v0, v1}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->createRemindersForEvent(Landroid/content/ContentResolver;ILjava/util/List;)V

    .line 483
    :cond_11
    const-string v26, "attendees"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 484
    const-string v26, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    const-string v26, "attendees"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/List;

    move/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v5, v0, v1}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->createAttendeesForEvent(Landroid/content/ContentResolver;ILjava/util/List;)V

    .line 533
    .end local v12    # "eventID":I
    .end local v13    # "eventInstance":Ljava/util/Map;
    :cond_12
    :goto_7
    return v12

    .line 328
    .restart local v23    # "startCal":Ljava/util/Calendar;
    .restart local v24    # "type":Ljava/lang/Object;
    :cond_13
    :try_start_2
    const-string v27, "dtstart"

    const-string v26, "startDate"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 330
    :catch_0
    move-exception v8

    .line 331
    .local v8, "e":Ljava/text/ParseException;
    invoke-virtual {v8}, Ljava/text/ParseException;->printStackTrace()V

    .line 332
    throw v8

    .line 345
    .end local v8    # "e":Ljava/text/ParseException;
    .end local v23    # "startCal":Ljava/util/Calendar;
    .restart local v9    # "endCal":Ljava/util/Calendar;
    :cond_14
    :try_start_3
    const-string v27, "dtend"

    const-string v26, "endDate"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 347
    :catch_1
    move-exception v8

    .line 348
    .restart local v8    # "e":Ljava/text/ParseException;
    invoke-virtual {v8}, Ljava/text/ParseException;->printStackTrace()V

    .line 349
    throw v8

    .line 388
    .end local v8    # "e":Ljava/text/ParseException;
    .end local v9    # "endCal":Ljava/util/Calendar;
    .restart local v7    # "duration":Ljava/lang/String;
    .restart local v10    # "endDate":Ljava/lang/String;
    .restart local v18    # "frequency":Ljava/lang/String;
    .restart local v19    # "interval":Ljava/lang/Integer;
    .restart local v20    # "occurrence":Ljava/lang/Integer;
    .restart local v21    # "recurrenceRule":Ljava/util/Map;
    :cond_15
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 389
    .local v4, "calendar":Ljava/util/Calendar;
    const-string v26, "endDate"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 390
    sget-object v26, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 405
    .end local v4    # "calendar":Ljava/util/Calendar;
    .end local v7    # "duration":Ljava/lang/String;
    .end local v10    # "endDate":Ljava/lang/String;
    .end local v18    # "frequency":Ljava/lang/String;
    .end local v19    # "interval":Ljava/lang/Integer;
    .end local v20    # "occurrence":Ljava/lang/Integer;
    .end local v21    # "recurrenceRule":Ljava/util/Map;
    .end local v24    # "type":Ljava/lang/Object;
    :cond_16
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 411
    :cond_17
    const-string v26, "eventTimezone"

    const-string v27, "GMT+8"

    invoke-static/range {v27 .. v27}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 417
    :cond_18
    const-string v26, "eventEndTimezone"

    const-string v27, "GMT+8"

    invoke-static/range {v27 .. v27}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 446
    .restart local v11    # "eventCalendar":Ljava/util/Map;
    .restart local v12    # "eventID":I
    .restart local v13    # "eventInstance":Ljava/util/Map;
    :cond_19
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .line 447
    .local v16, "exceptionStart":Ljava/util/Calendar;
    const-string v26, "exceptionDate"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 450
    .restart local v24    # "type":Ljava/lang/Object;
    :try_start_4
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v26, v0

    if-eqz v26, :cond_1b

    .line 451
    sget-object v27, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    const-string v26, "exceptionDate"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 452
    const-string v26, "originalInstanceTime"

    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_2

    .line 461
    :goto_8
    sget-object v26, Landroid/provider/CalendarContract$Events;->CONTENT_EXCEPTION_URI:Landroid/net/Uri;

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 463
    .local v17, "exceptionUri":Landroid/net/Uri;
    const-string v26, "sync"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1a

    const-string v26, "sync"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Boolean;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 464
    const-string v26, "calendar"

    move-object/from16 v0, v26

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Map;

    const-string v27, "id"

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->syncCalendar(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 465
    const-string v26, "source"

    move-object/from16 v0, v26

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const-string/jumbo v27, "type"

    move-object/from16 v0, v27

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->eventUriAsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 469
    :cond_1a
    :try_start_5
    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 470
    .local v14, "eventUri":Landroid/net/Uri;
    if-eqz v14, :cond_10

    .line 471
    invoke-virtual {v14}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result v12

    goto/16 :goto_6

    .line 454
    .end local v14    # "eventUri":Landroid/net/Uri;
    .end local v17    # "exceptionUri":Landroid/net/Uri;
    :cond_1b
    :try_start_6
    const-string v27, "originalInstanceTime"

    const-string v26, "exceptionDate"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_8

    .line 456
    :catch_2
    move-exception v8

    .line 457
    .restart local v8    # "e":Ljava/text/ParseException;
    invoke-virtual {v8}, Ljava/text/ParseException;->printStackTrace()V

    .line 458
    throw v8

    .line 473
    .end local v8    # "e":Ljava/text/ParseException;
    .restart local v17    # "exceptionUri":Landroid/net/Uri;
    :catch_3
    move-exception v8

    .line 474
    .local v8, "e":Ljava/lang/Exception;
    const-class v26, Lcom/isaigu/gymapp/calendar/CalendarEvents;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v26

    const-string v27, "Event exception error"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 491
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v11    # "eventCalendar":Ljava/util/Map;
    .end local v12    # "eventID":I
    .end local v13    # "eventInstance":Ljava/util/Map;
    .end local v16    # "exceptionStart":Ljava/util/Calendar;
    .end local v17    # "exceptionUri":Landroid/net/Uri;
    .end local v24    # "type":Ljava/lang/Object;
    :cond_1c
    const/4 v12, -0x1

    .line 493
    .restart local v12    # "eventID":I
    const-string v26, "calendarId"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1f

    .line 494
    const-string v26, "calendarId"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    invoke-static/range {v26 .. v26}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->findCalendarById(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 496
    .local v4, "calendar":Ljava/util/Map;
    if-eqz v4, :cond_1e

    .line 497
    const-string v27, "calendar_id"

    const-string v26, "id"

    move-object/from16 v0, v26

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 507
    :goto_9
    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 509
    .local v6, "createEventUri":Landroid/net/Uri;
    const-string v26, "sync"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1d

    const-string v26, "sync"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Boolean;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 510
    const-string v26, "id"

    move-object/from16 v0, v26

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->syncCalendar(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 511
    sget-object v28, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v26, "source"

    move-object/from16 v0, v26

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const-string/jumbo v27, "type"

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->eventUriAsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 514
    :cond_1d
    sget-object v26, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    const-string v27, "android.permission.WRITE_CALENDAR"

    invoke-static/range {v26 .. v27}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v26

    if-eqz v26, :cond_20

    .line 515
    const/4 v12, -0x1

    goto/16 :goto_7

    .line 499
    .end local v6    # "createEventUri":Landroid/net/Uri;
    :cond_1e
    const-string v26, "calendar_id"

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_9

    .line 503
    .end local v4    # "calendar":Ljava/util/Map;
    :cond_1f
    const-string v26, "1"

    invoke-static/range {v26 .. v26}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->findCalendarById(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 504
    .restart local v4    # "calendar":Ljava/util/Map;
    const-string v26, "calendar_id"

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_9

    .line 517
    .restart local v6    # "createEventUri":Landroid/net/Uri;
    :cond_20
    invoke-virtual {v5, v6, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 519
    .restart local v14    # "eventUri":Landroid/net/Uri;
    if-eqz v14, :cond_12

    .line 520
    invoke-virtual {v14}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 522
    const-string v26, "alarms"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_21

    .line 523
    const-string v26, "alarms"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/List;

    move-object/from16 v0, v26

    invoke-static {v5, v12, v0}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->createRemindersForEvent(Landroid/content/ContentResolver;ILjava/util/List;)V

    .line 526
    :cond_21
    const-string v26, "attendees"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 527
    const-string v26, "attendees"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/List;

    move-object/from16 v0, v26

    invoke-static {v5, v12, v0}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->createAttendeesForEvent(Landroid/content/ContentResolver;ILjava/util/List;)V

    goto/16 :goto_7
.end method

.method private static availabilityConstantMatchingString(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 755
    const-string v0, "free"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 763
    :goto_0
    return-object v0

    .line 759
    :cond_0
    const-string v0, "tentative"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 760
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 763
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private static availabilityStringMatchingConstant(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "constant"    # Ljava/lang/Integer;

    .prologue
    .line 743
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 746
    const-string v0, "busy"

    .line 750
    :goto_0
    return-object v0

    .line 748
    :pswitch_0
    const-string v0, "free"

    goto :goto_0

    .line 750
    :pswitch_1
    const-string v0, "tentative"

    goto :goto_0

    .line 743
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static calendarAllowedAvailabilitiesFromDBString(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "dbString"    # Ljava/lang/String;

    .prologue
    .line 724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .local v0, "availabilitiesStrings":Ljava/util/List;
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 726
    .local v1, "availabilityId":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 725
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 728
    :pswitch_0
    const-string v5, "busy"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 731
    :pswitch_1
    const-string v5, "free"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 734
    :pswitch_2
    const-string v5, "tentative"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 739
    .end local v1    # "availabilityId":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 726
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static createAttendeesForEvent(Landroid/content/ContentResolver;ILjava/util/List;)V
    .locals 16
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "eventID"    # I
    .param p2, "attendees"    # Ljava/util/List;

    .prologue
    .line 619
    move/from16 v0, p1

    int-to-long v12, v0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "_id"

    aput-object v15, v11, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v11}, Landroid/provider/CalendarContract$Attendees;->query(Landroid/content/ContentResolver;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 623
    .local v7, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 624
    const/4 v11, 0x0

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 625
    .local v4, "attendeeId":J
    sget-object v11, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 626
    .local v3, "attendeeUri":Landroid/net/Uri;
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 628
    .end local v3    # "attendeeUri":Landroid/net/Uri;
    .end local v4    # "attendeeId":J
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 630
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_1

    .line 631
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 632
    .local v2, "attendee":Ljava/util/Map;
    const-string/jumbo v11, "url"

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 633
    .local v10, "url":Ljava/lang/String;
    const-string v11, "firstName"

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 635
    .local v8, "fNameType":Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 636
    .local v6, "attendeeValues":Landroid/content/ContentValues;
    const-string v11, "event_id"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 637
    const-string v11, "attendeeEmail"

    invoke-virtual {v6, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v11, "attendeeRelationship"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 640
    const-string v11, "attendeeName"

    invoke-virtual {v6, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    sget-object v11, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    const-string v12, "android.permission.WRITE_CALENDAR"

    invoke-static {v11, v12}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_2

    .line 646
    .end local v2    # "attendee":Ljava/util/Map;
    .end local v6    # "attendeeValues":Landroid/content/ContentValues;
    .end local v8    # "fNameType":Ljava/lang/String;
    .end local v10    # "url":Ljava/lang/String;
    :cond_1
    return-void

    .line 644
    .restart local v2    # "attendee":Ljava/util/Map;
    .restart local v6    # "attendeeValues":Landroid/content/ContentValues;
    .restart local v8    # "fNameType":Ljava/lang/String;
    .restart local v10    # "url":Ljava/lang/String;
    :cond_2
    sget-object v11, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 630
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method private static createRecurrenceRule(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3
    .param p0, "recurrence"    # Ljava/lang/String;
    .param p1, "interval"    # Ljava/lang/Integer;
    .param p2, "endDate"    # Ljava/lang/String;
    .param p3, "occurrence"    # Ljava/lang/Integer;

    .prologue
    .line 771
    const-string v1, "daily"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 772
    const-string v0, "FREQ=DAILY"

    .line 783
    .local v0, "rrule":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_0

    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";INTERVAL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 787
    :cond_0
    if-eqz p2, :cond_6

    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";UNTIL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 793
    .end local v0    # "rrule":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v0

    .line 773
    :cond_2
    const-string/jumbo v1, "weekly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 774
    const-string v0, "FREQ=WEEKLY"

    .restart local v0    # "rrule":Ljava/lang/String;
    goto :goto_0

    .line 775
    .end local v0    # "rrule":Ljava/lang/String;
    :cond_3
    const-string v1, "monthly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 776
    const-string v0, "FREQ=MONTHLY"

    .restart local v0    # "rrule":Ljava/lang/String;
    goto :goto_0

    .line 777
    .end local v0    # "rrule":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, "yearly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 778
    const-string v0, "FREQ=YEARLY"

    .restart local v0    # "rrule":Ljava/lang/String;
    goto :goto_0

    .line 780
    .end local v0    # "rrule":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 789
    .restart local v0    # "rrule":Ljava/lang/String;
    :cond_6
    if-eqz p3, :cond_1

    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";COUNT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static createRemindersForEvent(Landroid/content/ContentResolver;ILjava/util/List;)V
    .locals 16
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "eventID"    # I
    .param p2, "reminders"    # Ljava/util/List;

    .prologue
    .line 652
    move/from16 v0, p1

    int-to-long v12, v0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "_id"

    aput-object v15, v11, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v11}, Landroid/provider/CalendarContract$Reminders;->query(Landroid/content/ContentResolver;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 656
    .local v2, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 657
    const/4 v11, 0x0

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 658
    .local v6, "reminderId":J
    sget-object v11, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 659
    .local v8, "reminderUri":Landroid/net/Uri;
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 661
    .end local v6    # "reminderId":J
    .end local v8    # "reminderUri":Landroid/net/Uri;
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 663
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_1

    .line 664
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 665
    .local v5, "reminder":Ljava/util/Map;
    const-string v11, "date"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 666
    .local v10, "type":Ljava/lang/Object;
    instance-of v11, v10, Ljava/lang/Long;

    if-eqz v11, :cond_3

    .line 667
    const-string v11, "date"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    long-to-int v4, v12

    .line 668
    .local v4, "minutes":I
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 670
    .local v9, "reminderValues":Landroid/content/ContentValues;
    const-string v11, "event_id"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 671
    const-string v11, "minutes"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 672
    const-string v11, "method"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 674
    sget-object v11, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    const-string v12, "android.permission.WRITE_CALENDAR"

    invoke-static {v11, v12}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_2

    .line 680
    .end local v4    # "minutes":I
    .end local v5    # "reminder":Ljava/util/Map;
    .end local v9    # "reminderValues":Landroid/content/ContentValues;
    .end local v10    # "type":Ljava/lang/Object;
    :cond_1
    return-void

    .line 677
    .restart local v4    # "minutes":I
    .restart local v5    # "reminder":Ljava/util/Map;
    .restart local v9    # "reminderValues":Landroid/content/ContentValues;
    .restart local v10    # "type":Ljava/lang/Object;
    :cond_2
    sget-object v11, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 663
    .end local v4    # "minutes":I
    .end local v9    # "reminderValues":Landroid/content/ContentValues;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static eventUriAsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 599
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string/jumbo v2, "true"

    .line 600
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    .line 601
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    .line 602
    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 603
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 605
    return-object p0
.end method

.method public static findAllEvents(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0, "startDate"    # Ljava/lang/String;
    .param p1, "endDate"    # Ljava/lang/String;
    .param p2, "calendars"    # Ljava/util/List;

    .prologue
    .line 1007
    invoke-static {}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->haveCalendarReadWritePermissions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1008
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->findEvents(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1012
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findAttendeesByEventId(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p0, "eventID"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 134
    sget-object v1, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "(event_id = ?)"

    .line 136
    .local v3, "query":Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    aput-object p0, v4, v10

    .line 138
    .local v4, "args":[Ljava/lang/String;
    sget-object v1, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    const-string v2, "android.permission.READ_CALENDAR"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    :goto_0
    return-object v5

    .line 141
    :cond_0
    sget-object v1, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v9, "_id"

    aput-object v9, v2, v10

    const-string v9, "event_id"

    aput-object v9, v2, v11

    const/4 v9, 0x2

    const-string v10, "attendeeName"

    aput-object v10, v2, v9

    const/4 v9, 0x3

    const-string v10, "attendeeEmail"

    aput-object v10, v2, v9

    const/4 v9, 0x4

    const-string v10, "attendeeType"

    aput-object v10, v2, v9

    const/4 v9, 0x5

    const-string v10, "attendeeRelationship"

    aput-object v10, v2, v9

    const/4 v9, 0x6

    const-string v10, "attendeeStatus"

    aput-object v10, v2, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 151
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    invoke-static {v6}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->serializeAttendeeCalendar(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v8

    .line 153
    .local v8, "result":Ljava/util/List;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_1
    move-object v5, v8

    .line 159
    goto :goto_0

    .line 155
    .end local v8    # "result":Ljava/util/List;
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v7, "emptyAttendees":Ljava/util/List;
    move-object v8, v7

    .restart local v8    # "result":Ljava/util/List;
    goto :goto_1
.end method

.method public static findById(I)Ljava/util/Map;
    .locals 2
    .param p0, "eventID"    # I

    .prologue
    .line 1016
    invoke-static {}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->haveCalendarReadWritePermissions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1017
    invoke-static {p0}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->findEventById(I)Ljava/util/Map;

    move-result-object v0

    .line 1021
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findCalendarById(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p0, "calendarID"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 105
    sget-object v2, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 106
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 108
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "isPrimary"

    if-nez v2, :cond_0

    const-string v6, "0"

    .line 110
    .local v6, "IS_PRIMARY":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "calendar_displayName"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "account_name"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    aput-object v6, v2, v4

    const/4 v4, 0x4

    const-string v5, "calendar_access_level"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "allowedAvailability"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "account_type"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "calendar_color"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 121
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    invoke-static {v7}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->serializeEventCalendar(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v8

    .line 123
    .local v8, "result":Ljava/util/Map;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 128
    :goto_1
    return-object v8

    .line 108
    .end local v6    # "IS_PRIMARY":Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "result":Ljava/util/Map;
    :cond_0
    const-string v6, "isPrimary"

    goto :goto_0

    .line 125
    .restart local v6    # "IS_PRIMARY":Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "result":Ljava/util/Map;
    goto :goto_1
.end method

.method public static findCalendars()Ljava/util/List;
    .locals 1

    .prologue
    .line 983
    invoke-static {}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->haveCalendarReadWritePermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    invoke-static {}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->findEventCalendars()Ljava/util/List;

    move-result-object v0

    .line 986
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findEventById(I)Ljava/util/Map;
    .locals 10
    .param p0, "eventID"    # I

    .prologue
    const/4 v4, 0x0

    .line 228
    const/4 v6, 0x0

    .line 229
    .local v6, "cursor":Landroid/database/Cursor;
    sget-object v2, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 230
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v8, p0

    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 232
    .local v1, "uri":Landroid/net/Uri;
    const-string v3, "((deleted != 1))"

    .line 234
    .local v3, "selection":Ljava/lang/String;
    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_id"

    aput-object v8, v2, v5

    const/4 v5, 0x1

    const-string/jumbo v8, "title"

    aput-object v8, v2, v5

    const/4 v5, 0x2

    const-string v8, "description"

    aput-object v8, v2, v5

    const/4 v5, 0x3

    const-string v8, "dtstart"

    aput-object v8, v2, v5

    const/4 v5, 0x4

    const-string v8, "dtend"

    aput-object v8, v2, v5

    const/4 v5, 0x5

    const-string v8, "allDay"

    aput-object v8, v2, v5

    const/4 v5, 0x6

    const-string v8, "eventLocation"

    aput-object v8, v2, v5

    const/4 v5, 0x7

    const-string v8, "rrule"

    aput-object v8, v2, v5

    const/16 v5, 0x8

    const-string v8, "calendar_id"

    aput-object v8, v2, v5

    const/16 v5, 0x9

    const-string v8, "availability"

    aput-object v8, v2, v5

    const/16 v5, 0xa

    const-string v8, "hasAlarm"

    aput-object v8, v2, v5

    const/16 v5, 0xb

    const-string v8, "duration"

    aput-object v8, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 249
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 250
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 251
    invoke-static {v6}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->serializeEvent(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v7

    .line 256
    .local v7, "result":Ljava/util/Map;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 258
    return-object v7

    .line 253
    .end local v7    # "result":Ljava/util/Map;
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "result":Ljava/util/Map;
    goto :goto_0
.end method

.method private static findEventCalendars()Ljava/util/List;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 78
    sget-object v2, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 80
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 82
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "isPrimary"

    if-nez v2, :cond_0

    const-string v6, "0"

    .line 84
    .local v6, "IS_PRIMARY":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    const-string v4, "android.permission.READ_CALENDAR"

    invoke-static {v2, v4}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    :goto_1
    return-object v3

    .line 82
    .end local v6    # "IS_PRIMARY":Ljava/lang/String;
    :cond_0
    const-string v6, "isPrimary"

    goto :goto_0

    .line 87
    .restart local v6    # "IS_PRIMARY":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "calendar_displayName"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "account_name"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    aput-object v6, v2, v4

    const/4 v4, 0x4

    const-string v5, "calendar_access_level"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "allowedAvailability"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "account_type"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "calendar_color"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 98
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-static {v7}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->serializeEventCalendars(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v3

    goto :goto_1
.end method

.method private static findEventInstanceById(Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .param p0, "eventID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 265
    sget-object v2, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 267
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 268
    .local v8, "uriBuilder":Landroid/net/Uri$Builder;
    const-wide/high16 v10, -0x8000000000000000L

    invoke-static {v8, v10, v11}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 269
    const-wide v10, 0x7fffffffffffffffL

    invoke-static {v8, v10, v11}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 270
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 272
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(Instances._ID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "selection":Ljava/lang/String;
    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "_id"

    aput-object v9, v2, v5

    const/4 v5, 0x1

    const-string/jumbo v9, "title"

    aput-object v9, v2, v5

    const/4 v5, 0x2

    const-string v9, "description"

    aput-object v9, v2, v5

    const/4 v5, 0x3

    const-string v9, "begin"

    aput-object v9, v2, v5

    const/4 v5, 0x4

    const-string v9, "end"

    aput-object v9, v2, v5

    const/4 v5, 0x5

    const-string v9, "allDay"

    aput-object v9, v2, v5

    const/4 v5, 0x6

    const-string v9, "eventLocation"

    aput-object v9, v2, v5

    const/4 v5, 0x7

    const-string v9, "rrule"

    aput-object v9, v2, v5

    const/16 v5, 0x8

    const-string v9, "calendar_id"

    aput-object v9, v2, v5

    const/16 v5, 0x9

    const-string v9, "availability"

    aput-object v9, v2, v5

    const/16 v5, 0xa

    const-string v9, "hasAlarm"

    aput-object v9, v2, v5

    const/16 v5, 0xb

    const-string v9, "original_id"

    aput-object v9, v2, v5

    const/16 v5, 0xc

    const-string v9, "event_id"

    aput-object v9, v2, v5

    const/16 v5, 0xd

    const-string v9, "duration"

    aput-object v9, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 291
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    invoke-static {v6}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->serializeEvent(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v7

    .line 293
    .local v7, "result":Ljava/util/Map;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 298
    :goto_0
    return-object v7

    .line 295
    .end local v7    # "result":Ljava/util/Map;
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "result":Ljava/util/Map;
    goto :goto_0
.end method

.method private static findEvents(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 13
    .param p0, "startDate"    # Ljava/lang/String;
    .param p1, "endDate"    # Ljava/lang/String;
    .param p2, "calendars"    # Ljava/util/List;

    .prologue
    .line 164
    sget-object v2, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    const-string v4, "GMT+8"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 166
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 167
    .local v10, "eStartDate":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 170
    .local v9, "eEndDate":Ljava/util/Calendar;
    :try_start_0
    sget-object v2, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 171
    sget-object v2, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    sget-object v2, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 179
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    .line 180
    .local v12, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v12, v4, v5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 181
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v12, v4, v5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 183
    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 185
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "((begin >= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "AND ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "end"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " <= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 186
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "AND ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "visible"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = 1) "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "AND ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "eventStatus"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " IS NOT "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "selection":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 191
    const-string v6, "AND ("

    .line 192
    .local v6, "calendarQuery":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_1

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "calendar_id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 194
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v11, v2, :cond_0

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 192
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 172
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "calendarQuery":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "uriBuilder":Landroid/net/Uri$Builder;
    :catch_0
    move-exception v8

    .line 173
    .local v8, "e":Ljava/text/ParseException;
    invoke-virtual {v8}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_0

    .line 198
    .end local v8    # "e":Ljava/text/ParseException;
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v6    # "calendarQuery":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v12    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    .end local v6    # "calendarQuery":Ljava/lang/String;
    .end local v11    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 204
    const/16 v2, 0xf

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "event_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "title"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "description"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "begin"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "end"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "allDay"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "eventLocation"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "rrule"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string v5, "calendar_id"

    aput-object v5, v2, v4

    const/16 v4, 0x9

    const-string v5, "availability"

    aput-object v5, v2, v4

    const/16 v4, 0xa

    const-string v5, "hasAlarm"

    aput-object v5, v2, v4

    const/16 v4, 0xb

    const-string v5, "original_id"

    aput-object v5, v2, v4

    const/16 v4, 0xc

    const-string v5, "event_id"

    aput-object v5, v2, v4

    const/16 v4, 0xd

    const-string v5, "duration"

    aput-object v5, v2, v4

    const/16 v4, 0xe

    const-string v5, "original_sync_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 222
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-static {v7}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->serializeEvents(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private static findReminderByEventId(Ljava/lang/String;J)Ljava/util/List;
    .locals 13
    .param p0, "eventID"    # Ljava/lang/String;
    .param p1, "startDate"    # J

    .prologue
    .line 684
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 685
    .local v11, "results":Ljava/util/List;
    sget-object v1, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 686
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "(event_id = ?)"

    .line 688
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    const-string v2, "android.permission.READ_CALENDAR"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 689
    const/4 v11, 0x0

    .line 718
    .end local v11    # "results":Ljava/util/List;
    :cond_0
    :goto_0
    return-object v11

    .line 691
    .restart local v11    # "results":Ljava/util/List;
    :cond_1
    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "minutes"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 695
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 696
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 698
    .local v6, "alarm":Ljava/util/Map;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 699
    .local v7, "cal":Ljava/util/Calendar;
    sget-object v1, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    const-string v2, "GMT+8"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 700
    invoke-virtual {v7, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 703
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 709
    .local v10, "minutes":I
    const/16 v1, 0xc

    invoke-virtual {v7, v1, v10}, Ljava/util/Calendar;->add(II)V

    .line 710
    const-string v1, "date"

    sget-object v2, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 704
    .end local v10    # "minutes":I
    :catch_0
    move-exception v9

    .line 705
    .local v9, "e":Ljava/lang/Exception;
    const-class v1, Lcom/isaigu/gymapp/calendar/CalendarEvents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error parsing event minutes"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 714
    .end local v6    # "alarm":Ljava/util/Map;
    .end local v7    # "cal":Ljava/util/Calendar;
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz v8, :cond_0

    .line 715
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getCalendarPermissions()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 969
    sget-object v2, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    const-string v3, "REACT_NATIVE_CALENDAR_PREFERENCES"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 970
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "permissionRequested"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 972
    .local v0, "permissionRequested":Z
    invoke-static {}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->haveCalendarReadWritePermissions()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 973
    const-string v2, "authorized"

    .line 977
    :goto_0
    return-object v2

    .line 974
    :cond_0
    if-nez v0, :cond_1

    .line 975
    const-string/jumbo v2, "undetermined"

    goto :goto_0

    .line 977
    :cond_1
    const-string v2, "denied"

    goto :goto_0
.end method

.method private static haveCalendarReadWritePermissions()Z
    .locals 4

    .prologue
    .line 67
    sget-object v2, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    const-string v3, "android.permission.WRITE_CALENDAR"

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 68
    .local v1, "writePermission":I
    sget-object v2, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    const-string v3, "android.permission.READ_CALENDAR"

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 70
    .local v0, "readPermission":I
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 43
    sput-object p0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    .line 44
    return-void
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p0, "requestCode"    # I
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    const/4 v1, 0x0

    .line 55
    sget v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->PERMISSION_REQUEST_CODE:I

    if-ne p0, v0, :cond_0

    .line 56
    array-length v0, p2

    if-lez v0, :cond_1

    aget v0, p2, v1

    if-nez v0, :cond_1

    .line 57
    sget-object v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->callback:Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->callback:Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;->onPermission(Z)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->callback:Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;->onPermission(Z)V

    goto :goto_0
.end method

.method public static openEventInCalendar(I)V
    .locals 6
    .param p0, "eventID"    # I

    .prologue
    .line 1026
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p0

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1027
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1029
    .local v0, "sendIntent":Landroid/content/Intent;
    sget-object v2, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1030
    sget-object v2, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1032
    :cond_0
    return-void
.end method

.method public static removeEvent(ILjava/util/Map;)Z
    .locals 14
    .param p0, "eventID"    # I
    .param p1, "options"    # Ljava/util/Map;

    .prologue
    .line 539
    invoke-static {}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->haveCalendarReadWritePermissions()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 540
    const/4 v7, 0x0

    .line 542
    .local v7, "rows":I
    :try_start_0
    sget-object v10, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 543
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->findEventById(I)Ljava/util/Map;

    move-result-object v3

    .line 544
    .local v3, "eventInstance":Ljava/util/Map;
    const-string v10, "calendar"

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 546
    .local v2, "eventCalendar":Ljava/util/Map;
    const-string v10, "exceptionDate"

    invoke-interface {p1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 547
    sget-object v10, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v12, p0

    invoke-static {v10, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 549
    .local v9, "uri":Landroid/net/Uri;
    const-string v10, "sync"

    invoke-interface {p1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "sync"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 550
    const-string v10, "id"

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->syncCalendar(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 551
    const-string v10, "source"

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string/jumbo v11, "type"

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->eventUriAsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 553
    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 592
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "eventCalendar":Ljava/util/Map;
    .end local v3    # "eventInstance":Ljava/util/Map;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    if-lez v7, :cond_5

    const/4 v10, 0x1

    .line 594
    .end local v7    # "rows":I
    :goto_1
    return v10

    .line 556
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v2    # "eventCalendar":Ljava/util/Map;
    .restart local v3    # "eventInstance":Ljava/util/Map;
    .restart local v7    # "rows":I
    :cond_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 557
    .local v4, "eventValues":Landroid/content/ContentValues;
    sget-object v10, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    const-string v11, "GMT+8"

    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 559
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 560
    .local v5, "exceptionStart":Ljava/util/Calendar;
    const-string v10, "exceptionDate"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 563
    .local v8, "type":Ljava/lang/Object;
    :try_start_1
    instance-of v10, v8, Ljava/lang/String;

    if-eqz v10, :cond_4

    .line 564
    sget-object v11, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    const-string v10, "exceptionDate"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 565
    const-string v10, "originalInstanceTime"

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 574
    :goto_2
    :try_start_2
    const-string v10, "eventStatus"

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 576
    sget-object v10, Landroid/provider/CalendarContract$Events;->CONTENT_EXCEPTION_URI:Landroid/net/Uri;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 578
    .restart local v9    # "uri":Landroid/net/Uri;
    const-string v10, "sync"

    invoke-interface {p1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "sync"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 579
    const-string v10, "source"

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string/jumbo v11, "type"

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->eventUriAsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 582
    :cond_3
    invoke-virtual {v0, v9, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .line 583
    .local v6, "exceptionUri":Landroid/net/Uri;
    if-eqz v6, :cond_1

    .line 584
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 567
    .end local v6    # "exceptionUri":Landroid/net/Uri;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_4
    :try_start_3
    const-string v11, "originalInstanceTime"

    const-string v10, "exceptionDate"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 569
    :catch_0
    move-exception v1

    .line 570
    .local v1, "e":Ljava/text/ParseException;
    :try_start_4
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 571
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 589
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "e":Ljava/text/ParseException;
    .end local v2    # "eventCalendar":Ljava/util/Map;
    .end local v3    # "eventInstance":Ljava/util/Map;
    .end local v4    # "eventValues":Landroid/content/ContentValues;
    .end local v5    # "exceptionStart":Ljava/util/Calendar;
    .end local v8    # "type":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 590
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 592
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 594
    .end local v7    # "rows":I
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_1
.end method

.method public static requestCalendarReadWritePermission(Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;)V
    .locals 4
    .param p0, "cal"    # Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;

    .prologue
    .line 47
    sget-object v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_CALENDAR"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.permission.READ_CALENDAR"

    aput-object v3, v1, v2

    sget v2, Lcom/isaigu/gymapp/calendar/CalendarEvents;->PERMISSION_REQUEST_CODE:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 51
    sput-object p0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->callback:Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;

    .line 52
    return-void
.end method

.method public static saveEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)I
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "details"    # Ljava/util/Map;
    .param p2, "options"    # Ljava/util/Map;

    .prologue
    const/4 v1, -0x1

    .line 991
    invoke-static {}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->haveCalendarReadWritePermissions()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 993
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->addEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 994
    .local v0, "eventId":I
    if-le v0, v1, :cond_0

    .line 1001
    .end local v0    # "eventId":I
    :goto_0
    return v0

    .line 997
    :catch_0
    move-exception v2

    :cond_0
    move v0, v1

    .line 999
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1001
    goto :goto_0
.end method

.method private static serializeAttendeeCalendar(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 951
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 953
    .local v1, "results":Ljava/util/List;
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 955
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 957
    .local v0, "attendee":Ljava/util/Map;
    const-string v2, "name"

    const/4 v3, 0x2

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    const-string v2, "email"

    const/4 v3, 0x3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 963
    .end local v0    # "attendee":Ljava/util/Map;
    :cond_0
    return-object v1
.end method

.method private static serializeEvent(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 15
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 812
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 814
    .local v4, "event":Ljava/util/Map;
    sget-object v10, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    const-string v11, "GMT+8"

    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 816
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 817
    .local v6, "foundStartDate":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 819
    .local v5, "foundEndDate":Ljava/util/Calendar;
    const/4 v0, 0x0

    .line 820
    .local v0, "allDay":Z
    const-string v9, ""

    .line 821
    .local v9, "startDateUTC":Ljava/lang/String;
    const-string v3, ""

    .line 823
    .local v3, "endDateUTC":Ljava/lang/String;
    const/4 v10, 0x3

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 824
    const/4 v10, 0x3

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 825
    sget-object v10, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 828
    :cond_0
    const/4 v10, 0x4

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 829
    const/4 v10, 0x4

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 830
    sget-object v10, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 833
    :cond_1
    const/4 v10, 0x5

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 834
    const/4 v10, 0x5

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_9

    const/4 v0, 0x1

    .line 837
    :cond_2
    :goto_0
    const/4 v10, 0x7

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 838
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 839
    .local v7, "recurrenceRule":Ljava/util/Map;
    const/4 v10, 0x7

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 841
    .local v8, "recurrenceRules":[Ljava/lang/String;
    const-string v10, "recurrence"

    const/4 v11, 0x0

    aget-object v11, v8, v11

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    const-string v10, "frequency"

    const/4 v11, 0x0

    aget-object v11, v8, v11

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    const-string v10, "duration"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    const-string v10, "duration"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 845
    const-string v10, "duration"

    const-string v11, "duration"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    :cond_3
    array-length v10, v8

    const/4 v11, 0x2

    if-lt v10, v11, :cond_4

    const/4 v10, 0x1

    aget-object v10, v8, v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const-string v11, "INTERVAL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 849
    const-string v10, "interval"

    const/4 v11, 0x1

    aget-object v11, v8, v11

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    :cond_4
    array-length v10, v8

    const/4 v11, 0x3

    if-lt v10, v11, :cond_5

    .line 853
    const/4 v10, 0x2

    aget-object v10, v8, v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const-string v11, "UNTIL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 855
    :try_start_0
    const-string v10, "endDate"

    sget-object v11, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    sget-object v12, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    const/4 v13, 0x2

    aget-object v13, v8, v13

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    :cond_5
    :goto_1
    const-string v10, "recurrenceRule"

    invoke-interface {v4, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    .end local v7    # "recurrenceRule":Ljava/util/Map;
    .end local v8    # "recurrenceRules":[Ljava/lang/String;
    :cond_6
    const-string v10, "id"

    const/4 v11, 0x0

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    const-string v10, "calendar"

    const-string v11, "calendar_id"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->findCalendarById(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    const-string/jumbo v10, "title"

    const-string/jumbo v11, "title"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    const-string v10, "description"

    const/4 v11, 0x2

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    const-string v10, "startDate"

    invoke-interface {v4, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    const-string v10, "endDate"

    invoke-interface {v4, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    const-string v10, "allDay"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    const-string v10, "location"

    const/4 v11, 0x6

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    const-string v10, "availability"

    const/16 v11, 0x9

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->availabilityStringMatchingConstant(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    const-string v10, "attendees"

    const/4 v11, 0x0

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->findAttendeesByEventId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const/16 v10, 0xa

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_b

    .line 880
    const-string v10, "alarms"

    const/4 v11, 0x0

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->findReminderByEventId(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    :goto_2
    const-string v10, "original_id"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    const-string v10, "original_id"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 887
    const-string v10, "originalId"

    const-string v11, "original_id"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    :cond_7
    const-string v10, "original_sync_id"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_8

    const-string v10, "original_sync_id"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 891
    const-string v10, "syncId"

    const-string v11, "original_sync_id"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    :cond_8
    return-object v4

    .line 834
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 856
    .restart local v7    # "recurrenceRule":Ljava/util/Map;
    .restart local v8    # "recurrenceRules":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 857
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_1

    .line 859
    .end local v1    # "e":Ljava/text/ParseException;
    :cond_a
    const/4 v10, 0x2

    aget-object v10, v8, v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const-string v11, "COUNT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 860
    const-string v10, "occurrence"

    const/4 v11, 0x2

    aget-object v11, v8, v11

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 882
    .end local v7    # "recurrenceRule":Ljava/util/Map;
    .end local v8    # "recurrenceRules":[Ljava/lang/String;
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 883
    .local v2, "emptyAlarms":Ljava/util/List;
    const-string v10, "alarms"

    invoke-interface {v4, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method private static serializeEventCalendar(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 12
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x3

    .line 911
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 913
    .local v1, "calendar":Ljava/util/Map;
    const-string v4, "id"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    const-string/jumbo v4, "title"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    const-string v4, "source"

    const/4 v5, 0x2

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    const-string v4, "allowedAvailabilities"

    const/4 v5, 0x5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->calendarAllowedAvailabilitiesFromDBString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    const-string/jumbo v4, "type"

    const/4 v5, 0x6

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    const-string v2, "#FFFFFF"

    .line 921
    .local v2, "colorHex":Ljava/lang/String;
    :try_start_0
    const-string v4, "#%06X"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const v7, 0xffffff

    const/4 v8, 0x7

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    and-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 925
    :goto_0
    const-string v4, "color"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 928
    const-string v4, "isPrimary"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    :cond_0
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 932
    const-string v4, "isPrimary"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    :cond_1
    const/4 v4, 0x4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 937
    .local v0, "accesslevel":I
    const/16 v4, 0x320

    if-eq v0, v4, :cond_2

    const/16 v4, 0x2bc

    if-eq v0, v4, :cond_2

    const/16 v4, 0x258

    if-eq v0, v4, :cond_2

    const/16 v4, 0x1f4

    if-ne v0, v4, :cond_3

    .line 941
    :cond_2
    const-string v4, "allowsModifications"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    :goto_1
    return-object v1

    .line 922
    .end local v0    # "accesslevel":I
    :catch_0
    move-exception v3

    .line 923
    .local v3, "e":Ljava/lang/Exception;
    const-class v4, Lcom/isaigu/gymapp/calendar/CalendarEvents;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error parsing calendar color"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 943
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "accesslevel":I
    :cond_3
    const-string v4, "allowsModifications"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static serializeEventCalendars(Landroid/database/Cursor;)Ljava/util/List;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 898
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 900
    .local v0, "results":Ljava/util/List;
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 901
    invoke-static {p0}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->serializeEventCalendar(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 904
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 906
    return-object v0
.end method

.method private static serializeEvents(Landroid/database/Cursor;)Ljava/util/List;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 799
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 800
    .local v0, "results":Ljava/util/List;
    if-eqz p0, :cond_1

    .line 801
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 802
    invoke-static {p0}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->serializeEvent(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 805
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 808
    :cond_1
    return-object v0
.end method

.method public static syncCalendar(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "calendarId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 609
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 610
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "sync_events"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 611
    const-string/jumbo v1, "visible"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 613
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 614
    return-void
.end method

.method public static uriForCalendar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1035
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
