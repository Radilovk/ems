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

    .line 30
    const/16 v0, 0x25

    sput v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->PERMISSION_REQUEST_CODE:I

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)I
    .locals 20
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "details"    # Ljava/util/Map;
    .param p2, "options"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 302
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    sget-object v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    const-string v4, "GMT+8"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 304
    sget-object v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 305
    .local v5, "cr":Landroid/content/ContentResolver;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v6, v0

    .line 307
    .local v6, "eventValues":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 308
    const-string v0, "title"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_0
    const-string v0, "description"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 312
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_1
    const-string v0, "location"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 316
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "eventLocation"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_2
    const-string v0, "startDate"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 320
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 321
    .local v7, "startCal":Ljava/util/Calendar;
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 324
    .local v8, "type":Ljava/lang/Object;
    :try_start_0
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 325
    sget-object v9, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 326
    const-string v0, "dtstart"

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 328
    :cond_3
    const-string v9, "dtstart"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    goto :goto_1

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 332
    throw v0

    .line 336
    .end local v0    # "e":Ljava/text/ParseException;
    .end local v7    # "startCal":Ljava/util/Calendar;
    .end local v8    # "type":Ljava/lang/Object;
    :cond_4
    :goto_1
    const-string v0, "endDate"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 337
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 338
    .local v7, "endCal":Ljava/util/Calendar;
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 341
    .restart local v8    # "type":Ljava/lang/Object;
    :try_start_1
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 342
    sget-object v9, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 343
    const-string v9, "dtend"

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 345
    :cond_5
    const-string v9, "dtend"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 350
    :goto_2
    goto :goto_3

    .line 347
    :catch_1
    move-exception v0

    .line 348
    .restart local v0    # "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 349
    throw v0

    .line 353
    .end local v0    # "e":Ljava/text/ParseException;
    .end local v7    # "endCal":Ljava/util/Calendar;
    .end local v8    # "type":Ljava/lang/Object;
    :cond_6
    :goto_3
    const-string v7, "recurrence"

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_7

    .line 354
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v9, v9, v9}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->createRecurrenceRule(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    .line 355
    .local v7, "rule":Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 356
    const-string v8, "rrule"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .end local v7    # "rule":Ljava/lang/String;
    :cond_7
    const-string v7, "recurrenceRule"

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 361
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 363
    .local v7, "recurrenceRule":Ljava/util/Map;
    const-string v8, "frequency"

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 364
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 365
    .local v8, "frequency":Ljava/lang/String;
    const-string v10, "PT1H"

    .line 366
    .local v10, "duration":Ljava/lang/String;
    const/4 v11, 0x0

    .line 367
    .local v11, "interval":Ljava/lang/Integer;
    const/4 v12, 0x0

    .line 368
    .local v12, "occurrence":Ljava/lang/Integer;
    const/4 v13, 0x0

    .line 370
    .local v13, "endDate":Ljava/lang/String;
    const-string v14, "interval"

    invoke-interface {v7, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 371
    const-string v14, "interval"

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v11, v14

    check-cast v11, Ljava/lang/Integer;

    .line 374
    :cond_8
    const-string v14, "duration"

    invoke-interface {v7, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 375
    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v10, v15

    check-cast v10, Ljava/lang/String;

    .line 378
    :cond_9
    const-string v15, "occurrence"

    invoke-interface {v7, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 379
    const-string v15, "occurrence"

    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v12, v15

    check-cast v12, Ljava/lang/Integer;

    .line 382
    :cond_a
    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 383
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 385
    .local v15, "type":Ljava/lang/Object;
    instance-of v9, v15, Ljava/lang/String;

    if-eqz v9, :cond_b

    .line 386
    sget-object v9, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    .line 388
    :cond_b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 389
    .local v9, "calendar":Ljava/util/Calendar;
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 390
    sget-object v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 394
    .end local v9    # "calendar":Ljava/util/Calendar;
    .end local v15    # "type":Ljava/lang/Object;
    :cond_c
    :goto_4
    invoke-static {v8, v11, v13, v12}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->createRecurrenceRule(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "rule":Ljava/lang/String;
    if-eqz v10, :cond_d

    .line 396
    invoke-virtual {v6, v14, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_d
    if-eqz v0, :cond_e

    .line 399
    const-string v1, "rrule"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .end local v0    # "rule":Ljava/lang/String;
    .end local v7    # "recurrenceRule":Ljava/util/Map;
    .end local v8    # "frequency":Ljava/lang/String;
    .end local v10    # "duration":Ljava/lang/String;
    .end local v11    # "interval":Ljava/lang/Integer;
    .end local v12    # "occurrence":Ljava/lang/Integer;
    .end local v13    # "endDate":Ljava/lang/String;
    :cond_e
    const-string v0, "allDay"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 405
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 408
    :cond_f
    const-string v0, "timeZone"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 409
    const-string v0, "timeZone"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "eventTimezone"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 411
    :cond_10
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eventTimezone"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :goto_5
    const-string v0, "endTimeZone"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 415
    const-string v0, "endTimeZone"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "eventEndTimezone"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 417
    :cond_11
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eventEndTimezone"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :goto_6
    const-string v1, "alarms"

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_12

    .line 421
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v7, "hasAlarm"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 424
    :cond_12
    const-string v0, "availability"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 425
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->availabilityConstantMatchingString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 429
    :cond_13
    const-string v7, "id"

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v8, "type"

    const-string v9, "source"

    const-string v10, "attendees"

    const-string v11, "sync"

    if-eqz v0, :cond_1c

    .line 430
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 431
    .local v4, "eventID":I
    invoke-static {v4}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->findEventById(I)Ljava/util/Map;

    move-result-object v12

    .line 433
    .local v12, "eventInstance":Ljava/util/Map;
    if-eqz v12, :cond_19

    .line 434
    const-string v0, "calendar"

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    .line 436
    .local v13, "eventCalendar":Ljava/util/Map;
    const-string v14, "exceptionDate"

    invoke-interface {v3, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_15

    .line 437
    sget-object v14, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object v15, v1

    int-to-long v1, v4

    invoke-static {v14, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 439
    .local v1, "updateUri":Landroid/net/Uri;
    invoke-interface {v3, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 440
    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->syncCalendar(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 441
    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->eventUriAsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 443
    :cond_14
    const/4 v0, 0x0

    invoke-virtual {v5, v1, v6, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 445
    .end local v1    # "updateUri":Landroid/net/Uri;
    move-object/from16 v16, v15

    goto/16 :goto_8

    .line 446
    :cond_15
    move-object v15, v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 447
    .local v1, "exceptionStart":Ljava/util/Calendar;
    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 450
    .local v2, "type":Ljava/lang/Object;
    move-object/from16 v16, v15

    :try_start_2
    instance-of v15, v2, Ljava/lang/String;

    if-eqz v15, :cond_16

    .line 451
    sget-object v15, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 452
    const-string v14, "originalInstanceTime"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_7

    .line 454
    :cond_16
    const-string v15, "originalInstanceTime"

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v6, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_3

    .line 459
    :goto_7
    nop

    .line 461
    sget-object v14, Landroid/provider/CalendarContract$Events;->CONTENT_EXCEPTION_URI:Landroid/net/Uri;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 463
    .local v14, "exceptionUri":Landroid/net/Uri;
    invoke-interface {v3, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_17

    .line 464
    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->syncCalendar(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 465
    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v14, v0, v8}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->eventUriAsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 469
    :cond_17
    :try_start_3
    invoke-virtual {v5, v14, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 470
    .local v0, "eventUri":Landroid/net/Uri;
    if-eqz v0, :cond_18

    .line 471
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v4, v8

    .line 475
    .end local v0    # "eventUri":Landroid/net/Uri;
    :cond_18
    goto :goto_8

    .line 473
    :catch_2
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/Exception;
    const-class v8, Lcom/isaigu/gymapp/calendar/CalendarEvents;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Event exception error"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 456
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v14    # "exceptionUri":Landroid/net/Uri;
    :catch_3
    move-exception v0

    .line 457
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 458
    throw v0

    .line 433
    .end local v0    # "e":Ljava/text/ParseException;
    .end local v1    # "exceptionStart":Ljava/util/Calendar;
    .end local v2    # "type":Ljava/lang/Object;
    .end local v13    # "eventCalendar":Ljava/util/Map;
    :cond_19
    move-object/from16 v16, v1

    .line 479
    :goto_8
    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 480
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v0, v2}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->createRemindersForEvent(Landroid/content/ContentResolver;ILjava/util/List;)V

    .line 483
    :cond_1a
    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 484
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v0, v2}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->createAttendeesForEvent(Landroid/content/ContentResolver;ILjava/util/List;)V

    .line 487
    :cond_1b
    return v4

    .line 491
    .end local v4    # "eventID":I
    .end local v12    # "eventInstance":Ljava/util/Map;
    :cond_1c
    move-object/from16 v19, v2

    move-object v2, v1

    move-object/from16 v1, v19

    const/4 v0, -0x1

    .line 493
    .local v0, "eventID":I
    const-string v12, "calendarId"

    invoke-interface {v1, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "calendar_id"

    if-eqz v12, :cond_1e

    .line 494
    const-string v12, "calendarId"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->findCalendarById(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    .line 496
    .local v12, "calendar":Ljava/util/Map;
    if-eqz v12, :cond_1d

    .line 497
    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v13, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_9

    .line 499
    :cond_1d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v13, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_9

    .line 503
    .end local v12    # "calendar":Ljava/util/Map;
    :cond_1e
    const-string v12, "1"

    invoke-static {v12}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->findCalendarById(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    .line 504
    .restart local v12    # "calendar":Ljava/util/Map;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v13, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 507
    :goto_9
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 509
    .local v4, "createEventUri":Landroid/net/Uri;
    invoke-interface {v3, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 510
    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->syncCalendar(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 511
    sget-object v7, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v7, v9, v8}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->eventUriAsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 514
    :cond_1f
    sget-object v7, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    const-string v8, "android.permission.WRITE_CALENDAR"

    invoke-static {v7, v8}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_20

    .line 515
    const/4 v2, -0x1

    return v2

    .line 517
    :cond_20
    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 519
    .local v7, "eventUri":Landroid/net/Uri;
    if-eqz v7, :cond_23

    .line 520
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 522
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 523
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v0, v2}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->createRemindersForEvent(Landroid/content/ContentResolver;ILjava/util/List;)V

    .line 526
    :cond_21
    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 527
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v0, v2}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->createAttendeesForEvent(Landroid/content/ContentResolver;ILjava/util/List;)V

    .line 530
    :cond_22
    return v0

    .line 533
    :cond_23
    return v0
.end method

.method private static availabilityConstantMatchingString(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 755
    const-string v0, "free"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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

    return-object v0

    .line 763
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static availabilityStringMatchingConstant(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2
    .param p0, "constant"    # Ljava/lang/Integer;

    .line 743
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 746
    const-string v0, "busy"

    return-object v0

    .line 750
    :cond_0
    const-string v0, "tentative"

    return-object v0

    .line 748
    :cond_1
    const-string v0, "free"

    return-object v0
.end method

.method private static calendarAllowedAvailabilitiesFromDBString(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "dbString"    # Ljava/lang/String;

    .line 724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .local v0, "availabilitiesStrings":Ljava/util/List;
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 726
    .local v4, "availabilityId":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    goto :goto_1

    .line 734
    :cond_0
    const-string v5, "tentative"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 731
    :cond_1
    const-string v5, "free"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    goto :goto_1

    .line 728
    :cond_2
    const-string v5, "busy"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    nop

    .line 725
    .end local v4    # "availabilityId":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 739
    :cond_3
    return-object v0
.end method

.method private static createAttendeesForEvent(Landroid/content/ContentResolver;ILjava/util/List;)V
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "eventID"    # I
    .param p2, "attendees"    # Ljava/util/List;

    .line 619
    int-to-long v0, p1

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/CalendarContract$Attendees;->query(Landroid/content/ContentResolver;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 623
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 625
    .local v1, "attendeeId":J
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 626
    .local v3, "attendeeUri":Landroid/net/Uri;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 627
    .end local v1    # "attendeeId":J
    .end local v3    # "attendeeUri":Landroid/net/Uri;
    goto :goto_0

    .line 628
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 630
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 631
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 632
    .local v2, "attendee":Ljava/util/Map;
    const-string v3, "url"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 633
    .local v3, "url":Ljava/lang/String;
    const-string v4, "firstName"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 635
    .local v4, "fNameType":Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 636
    .local v5, "attendeeValues":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "event_id"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 637
    const-string v6, "attendeeEmail"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "attendeeRelationship"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 640
    const-string v6, "attendeeName"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    sget-object v6, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    const-string v7, "android.permission.WRITE_CALENDAR"

    invoke-static {v6, v7}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 642
    return-void

    .line 644
    :cond_1
    sget-object v6, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 630
    .end local v2    # "attendee":Ljava/util/Map;
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "fNameType":Ljava/lang/String;
    .end local v5    # "attendeeValues":Landroid/content/ContentValues;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 646
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private static createRecurrenceRule(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3
    .param p0, "recurrence"    # Ljava/lang/String;
    .param p1, "interval"    # Ljava/lang/Integer;
    .param p2, "endDate"    # Ljava/lang/String;
    .param p3, "occurrence"    # Ljava/lang/Integer;

    .line 771
    const-string v0, "daily"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    const-string v0, "FREQ=DAILY"

    .local v0, "rrule":Ljava/lang/String;
    goto :goto_0

    .line 773
    .end local v0    # "rrule":Ljava/lang/String;
    :cond_0
    const-string v0, "weekly"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 774
    const-string v0, "FREQ=WEEKLY"

    .restart local v0    # "rrule":Ljava/lang/String;
    goto :goto_0

    .line 775
    .end local v0    # "rrule":Ljava/lang/String;
    :cond_1
    const-string v0, "monthly"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 776
    const-string v0, "FREQ=MONTHLY"

    .restart local v0    # "rrule":Ljava/lang/String;
    goto :goto_0

    .line 777
    .end local v0    # "rrule":Ljava/lang/String;
    :cond_2
    const-string v0, "yearly"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 778
    const-string v0, "FREQ=YEARLY"

    .line 783
    .restart local v0    # "rrule":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_3

    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";INTERVAL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 787
    :cond_3
    if-eqz p2, :cond_4

    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";UNTIL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 789
    :cond_4
    if-eqz p3, :cond_5

    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";COUNT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 793
    :cond_5
    :goto_1
    return-object v0

    .line 780
    .end local v0    # "rrule":Ljava/lang/String;
    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createRemindersForEvent(Landroid/content/ContentResolver;ILjava/util/List;)V
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "eventID"    # I
    .param p2, "reminders"    # Ljava/util/List;

    .line 652
    int-to-long v0, p1

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/CalendarContract$Reminders;->query(Landroid/content/ContentResolver;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 656
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 658
    .local v1, "reminderId":J
    sget-object v3, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 659
    .local v3, "reminderUri":Landroid/net/Uri;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 660
    .end local v1    # "reminderId":J
    .end local v3    # "reminderUri":Landroid/net/Uri;
    goto :goto_0

    .line 661
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 663
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 664
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 665
    .local v2, "reminder":Ljava/util/Map;
    const-string v3, "date"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 666
    .local v4, "type":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_2

    .line 667
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    long-to-int v3, v5

    .line 668
    .local v3, "minutes":I
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 670
    .local v5, "reminderValues":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "event_id"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 671
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "minutes"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 672
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "method"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 674
    sget-object v6, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    const-string v7, "android.permission.WRITE_CALENDAR"

    invoke-static {v6, v7}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 675
    return-void

    .line 677
    :cond_1
    sget-object v6, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 663
    .end local v2    # "reminder":Ljava/util/Map;
    .end local v3    # "minutes":I
    .end local v4    # "type":Ljava/lang/Object;
    .end local v5    # "reminderValues":Landroid/content/ContentValues;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 680
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private static eventUriAsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .line 599
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 600
    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 601
    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 602
    const-string v1, "account_type"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 603
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 605
    return-object p0
.end method

.method public static findAllEvents(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "startDate"    # Ljava/lang/String;
    .param p1, "endDate"    # Ljava/lang/String;
    .param p2, "calendars"    # Ljava/util/List;

    .line 1007
    invoke-static {}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->haveCalendarReadWritePermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->findEvents(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1009
    .local v0, "results":Ljava/util/List;
    return-object v0

    .line 1012
    .end local v0    # "results":Ljava/util/List;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static findAttendeesByEventId(Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .param p0, "eventID"    # Ljava/lang/String;

    .line 134
    sget-object v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v7, "(event_id = ?)"

    .line 136
    .local v7, "query":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v5, v1

    .line 138
    .local v5, "args":[Ljava/lang/String;
    sget-object v1, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    const-string v2, "android.permission.READ_CALENDAR"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const/4 v1, 0x0

    return-object v1

    .line 141
    :cond_0
    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "_id"

    const-string v9, "event_id"

    const-string v10, "attendeeName"

    const-string v11, "attendeeEmail"

    const-string v12, "attendeeType"

    const-string v13, "attendeeRelationship"

    const-string v14, "attendeeStatus"

    filled-new-array/range {v8 .. v14}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object v1, v0

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 151
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    invoke-static {v1}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->serializeAttendeeCalendar(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    .line 153
    .local v2, "result":Ljava/util/List;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 155
    .end local v2    # "result":Ljava/util/List;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v2, "emptyAttendees":Ljava/util/List;
    move-object v3, v2

    .line 159
    .local v2, "result":Ljava/util/List;
    :goto_0
    return-object v2
.end method

.method public static findById(I)Ljava/util/Map;
    .locals 1
    .param p0, "eventID"    # I

    .line 1016
    invoke-static {}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->haveCalendarReadWritePermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    invoke-static {p0}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->findEventById(I)Ljava/util/Map;

    move-result-object v0

    .line 1018
    .local v0, "results":Ljava/util/Map;
    return-object v0

    .line 1021
    .end local v0    # "results":Ljava/util/Map;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static findCalendarById(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p0, "calendarID"    # Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 106
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 108
    .local v7, "uri":Landroid/net/Uri;
    const-string v1, "isPrimary"

    move-object v8, v1

    .line 110
    .local v8, "IS_PRIMARY":Ljava/lang/String;
    const/16 v1, 0x8

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "calendar_displayName"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "account_name"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    aput-object v8, v3, v1

    const/4 v1, 0x4

    const-string v2, "calendar_access_level"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "allowedAvailability"

    aput-object v2, v3, v1

    const/4 v1, 0x6

    const-string v2, "account_type"

    aput-object v2, v3, v1

    const/4 v1, 0x7

    const-string v2, "calendar_color"

    aput-object v2, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 121
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    invoke-static {v1}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->serializeEventCalendar(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v2

    .line 123
    .local v2, "result":Ljava/util/Map;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 125
    .end local v2    # "result":Ljava/util/Map;
    :cond_0
    const/4 v2, 0x0

    .line 128
    .restart local v2    # "result":Ljava/util/Map;
    :goto_0
    return-object v2
.end method

.method public static findCalendars()Ljava/util/List;
    .locals 1

    .line 983
    invoke-static {}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->haveCalendarReadWritePermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    invoke-static {}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->findEventCalendars()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 986
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static findEventById(I)Ljava/util/Map;
    .locals 23
    .param p0, "eventID"    # I

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "cursor":Landroid/database/Cursor;
    sget-object v1, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 230
    .local v1, "cr":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v8, p0

    int-to-long v3, v8

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 232
    .local v9, "uri":Landroid/net/Uri;
    const-string v10, "((deleted != 1))"

    .line 234
    .local v10, "selection":Ljava/lang/String;
    const-string v11, "_id"

    const-string v12, "title"

    const-string v13, "description"

    const-string v14, "dtstart"

    const-string v15, "dtend"

    const-string v16, "allDay"

    const-string v17, "eventLocation"

    const-string v18, "rrule"

    const-string v19, "calendar_id"

    const-string v20, "availability"

    const-string v21, "hasAlarm"

    const-string v22, "duration"

    filled-new-array/range {v11 .. v22}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v9

    move-object v5, v10

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 249
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 250
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 251
    invoke-static {v0}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->serializeEvent(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v2

    .local v2, "result":Ljava/util/Map;
    goto :goto_0

    .line 253
    .end local v2    # "result":Ljava/util/Map;
    :cond_0
    const/4 v2, 0x0

    .line 256
    .restart local v2    # "result":Ljava/util/Map;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 258
    return-object v2
.end method

.method private static findEventCalendars()Ljava/util/List;
    .locals 9

    .line 78
    sget-object v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 80
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v7, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 82
    .local v7, "uri":Landroid/net/Uri;
    const-string v1, "isPrimary"

    move-object v8, v1

    .line 84
    .local v8, "IS_PRIMARY":Ljava/lang/String;
    sget-object v1, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    const-string v2, "android.permission.READ_CALENDAR"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const/4 v1, 0x0

    return-object v1

    .line 87
    :cond_0
    const/16 v1, 0x8

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "calendar_displayName"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "account_name"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    aput-object v8, v3, v1

    const/4 v1, 0x4

    const-string v2, "calendar_access_level"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "allowedAvailability"

    aput-object v2, v3, v1

    const/4 v1, 0x6

    const-string v2, "account_type"

    aput-object v2, v3, v1

    const/4 v1, 0x7

    const-string v2, "calendar_color"

    aput-object v2, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 98
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-static {v1}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->serializeEventCalendars(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private static findEventInstanceById(Ljava/lang/String;)Ljava/util/Map;
    .locals 25
    .param p0, "eventID"    # Ljava/lang/String;

    .line 265
    sget-object v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 267
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 268
    .local v7, "uriBuilder":Landroid/net/Uri$Builder;
    const-wide/high16 v1, -0x8000000000000000L

    invoke-static {v7, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 269
    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v7, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 270
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 272
    .local v8, "uri":Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(Instances._ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 274
    .local v10, "selection":Ljava/lang/String;
    const-string v11, "_id"

    const-string v12, "title"

    const-string v13, "description"

    const-string v14, "begin"

    const-string v15, "end"

    const-string v16, "allDay"

    const-string v17, "eventLocation"

    const-string v18, "rrule"

    const-string v19, "calendar_id"

    const-string v20, "availability"

    const-string v21, "hasAlarm"

    const-string v22, "original_id"

    const-string v23, "event_id"

    const-string v24, "duration"

    filled-new-array/range {v11 .. v24}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v8

    move-object v4, v10

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 291
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    invoke-static {v1}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->serializeEvent(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v2

    .line 293
    .local v2, "result":Ljava/util/Map;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 295
    .end local v2    # "result":Ljava/util/Map;
    :cond_0
    const/4 v2, 0x0

    .line 298
    .restart local v2    # "result":Ljava/util/Map;
    :goto_0
    return-object v2
.end method

.method private static findEvents(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 30
    .param p0, "startDate"    # Ljava/lang/String;
    .param p1, "endDate"    # Ljava/lang/String;
    .param p2, "calendars"    # Ljava/util/List;

    .line 164
    sget-object v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT+8"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 166
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 167
    .local v1, "eStartDate":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 170
    .local v2, "eEndDate":Ljava/util/Calendar;
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v3, p0

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 171
    sget-object v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v4, p1

    :try_start_2
    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 174
    goto :goto_2

    .line 172
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object/from16 v3, p0

    :goto_0
    move-object/from16 v4, p1

    .line 173
    .local v0, "e":Ljava/text/ParseException;
    :goto_1
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 177
    .end local v0    # "e":Ljava/text/ParseException;
    :goto_2
    sget-object v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 179
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v5, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    .line 180
    .local v11, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v11, v5, v6}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 181
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v11, v5, v6}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 183
    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    .line 185
    .local v12, "uri":Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "((begin >= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ") AND ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "end"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " <= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "visible"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = 1) AND ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "eventStatus"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " IS NOT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, "selection":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, ")"

    if-lez v6, :cond_2

    .line 191
    const-string v6, "AND ("

    .line 192
    .local v6, "calendarQuery":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 193
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "calendar_id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p2

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 194
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_0

    .line 195
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " OR "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 192
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_1
    move-object/from16 v13, p2

    .line 198
    .end local v8    # "i":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 199
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 190
    .end local v6    # "calendarQuery":Ljava/lang/String;
    :cond_2
    move-object/from16 v13, p2

    .line 202
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 204
    .end local v5    # "selection":Ljava/lang/String;
    .local v14, "selection":Ljava/lang/String;
    const-string v15, "event_id"

    const-string v16, "title"

    const-string v17, "description"

    const-string v18, "begin"

    const-string v19, "end"

    const-string v20, "allDay"

    const-string v21, "eventLocation"

    const-string v22, "rrule"

    const-string v23, "calendar_id"

    const-string v24, "availability"

    const-string v25, "hasAlarm"

    const-string v26, "original_id"

    const-string v27, "event_id"

    const-string v28, "duration"

    const-string v29, "original_sync_id"

    filled-new-array/range {v15 .. v29}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    move-object v6, v12

    move-object v8, v14

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 222
    .local v5, "cursor":Landroid/database/Cursor;
    invoke-static {v5}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->serializeEvents(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v6

    return-object v6
.end method

.method private static findReminderByEventId(Ljava/lang/String;J)Ljava/util/List;
    .locals 10
    .param p0, "eventID"    # Ljava/lang/String;
    .param p1, "startDate"    # J

    .line 684
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 685
    .local v0, "results":Ljava/util/List;
    sget-object v1, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 686
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v8, "(event_id = ?)"

    .line 688
    .local v8, "selection":Ljava/lang/String;
    sget-object v2, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    const-string v3, "android.permission.READ_CALENDAR"

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 689
    const/4 v2, 0x0

    return-object v2

    .line 691
    :cond_0
    sget-object v3, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "minutes"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p0, v6, v9

    const/4 v7, 0x0

    move-object v2, v1

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 695
    .local v2, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 696
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 698
    .local v3, "alarm":Ljava/util/Map;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 699
    .local v4, "cal":Ljava/util/Calendar;
    sget-object v5, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    const-string v6, "GMT+8"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 700
    invoke-virtual {v4, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 703
    :try_start_0
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    .local v5, "minutes":I
    nop

    .line 709
    const/16 v6, 0xc

    invoke-virtual {v4, v6, v5}, Ljava/util/Calendar;->add(II)V

    .line 710
    sget-object v6, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "date"

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    .end local v3    # "alarm":Ljava/util/Map;
    .end local v4    # "cal":Ljava/util/Calendar;
    .end local v5    # "minutes":I
    goto :goto_0

    .line 704
    .restart local v3    # "alarm":Ljava/util/Map;
    .restart local v4    # "cal":Ljava/util/Calendar;
    :catch_0
    move-exception v5

    .line 705
    .local v5, "e":Ljava/lang/Exception;
    const-class v6, Lcom/isaigu/gymapp/calendar/CalendarEvents;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Error parsing event minutes"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 706
    goto :goto_0

    .line 714
    .end local v3    # "alarm":Ljava/util/Map;
    .end local v4    # "cal":Ljava/util/Calendar;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz v2, :cond_2

    .line 715
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 718
    :cond_2
    return-object v0
.end method

.method public static getCalendarPermissions()Ljava/lang/String;
    .locals 3

    .line 969
    sget-object v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    const-string v1, "REACT_NATIVE_CALENDAR_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 970
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "permissionRequested"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 972
    .local v1, "permissionRequested":Z
    invoke-static {}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->haveCalendarReadWritePermissions()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 973
    const-string v2, "authorized"

    return-object v2

    .line 974
    :cond_0
    if-nez v1, :cond_1

    .line 975
    const-string v2, "undetermined"

    return-object v2

    .line 977
    :cond_1
    const-string v2, "denied"

    return-object v2
.end method

.method private static haveCalendarReadWritePermissions()Z
    .locals 3

    .line 67
    sget-object v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    const-string v1, "android.permission.WRITE_CALENDAR"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 68
    .local v0, "writePermission":I
    sget-object v1, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    const-string v2, "android.permission.READ_CALENDAR"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 70
    .local v1, "readPermission":I
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

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

    .line 55
    sget v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->PERMISSION_REQUEST_CODE:I

    if-ne p0, v0, :cond_1

    .line 56
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget v0, p2, v1

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->callback:Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;

    if-eqz v0, :cond_1

    .line 58
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;->onPermission(Z)V

    goto :goto_0

    .line 61
    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->callback:Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;->onPermission(Z)V

    .line 64
    :cond_1
    :goto_0
    return-void
.end method

.method public static openEventInCalendar(I)V
    .locals 3
    .param p0, "eventID"    # I

    .line 1026
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1027
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 1029
    .local v1, "sendIntent":Landroid/content/Intent;
    sget-object v2, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1030
    sget-object v2, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1032
    :cond_0
    return-void
.end method

.method public static removeEvent(ILjava/util/Map;)Z
    .locals 18
    .param p0, "eventID"    # I
    .param p1, "options"    # Ljava/util/Map;

    .line 539
    move-object/from16 v1, p1

    const-string v0, "exceptionDate"

    invoke-static {}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->haveCalendarReadWritePermissions()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 540
    const/4 v2, 0x0

    .line 542
    .local v2, "rows":I
    :try_start_0
    sget-object v4, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 543
    .local v4, "cr":Landroid/content/ContentResolver;
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->findEventById(I)Ljava/util/Map;

    move-result-object v5

    .line 544
    .local v5, "eventInstance":Ljava/util/Map;
    const-string v6, "calendar"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 546
    .local v6, "eventCalendar":Ljava/util/Map;
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v8, "type"

    const-string v9, "source"

    const-string v10, "sync"

    if-nez v7, :cond_1

    .line 547
    :try_start_1
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v7, p0

    int-to-long v11, v7

    :try_start_2
    invoke-static {v0, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 549
    .local v0, "uri":Landroid/net/Uri;
    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 550
    const-string v10, "id"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v4, v10}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->syncCalendar(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 551
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v0, v9, v8}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->eventUriAsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move-object v0, v8

    .line 553
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    move v2, v8

    .line 555
    .end local v0    # "uri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 556
    :cond_1
    move/from16 v7, p0

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 557
    .local v11, "eventValues":Landroid/content/ContentValues;
    sget-object v12, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    const-string v13, "GMT+8"

    invoke-static {v13}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 559
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 560
    .local v12, "exceptionStart":Ljava/util/Calendar;
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 563
    .local v13, "type":Ljava/lang/Object;
    :try_start_3
    instance-of v14, v13, Ljava/lang/String;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v15, "originalInstanceTime"

    if-eqz v14, :cond_2

    .line 564
    :try_start_4
    sget-object v14, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 565
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 567
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 572
    :goto_0
    nop

    .line 574
    :try_start_5
    const-string v0, "eventStatus"

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 576
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_EXCEPTION_URI:Landroid/net/Uri;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 578
    .restart local v0    # "uri":Landroid/net/Uri;
    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 579
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v0, v9, v8}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->eventUriAsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move-object v0, v8

    .line 582
    :cond_3
    invoke-virtual {v4, v0, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 583
    .local v8, "exceptionUri":Landroid/net/Uri;
    if-eqz v8, :cond_4

    .line 584
    const/4 v2, 0x1

    .line 591
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v5    # "eventInstance":Ljava/util/Map;
    .end local v6    # "eventCalendar":Ljava/util/Map;
    .end local v8    # "exceptionUri":Landroid/net/Uri;
    .end local v11    # "eventValues":Landroid/content/ContentValues;
    .end local v12    # "exceptionStart":Ljava/util/Calendar;
    .end local v13    # "type":Ljava/lang/Object;
    :cond_4
    :goto_1
    goto :goto_3

    .line 569
    .restart local v4    # "cr":Landroid/content/ContentResolver;
    .restart local v5    # "eventInstance":Ljava/util/Map;
    .restart local v6    # "eventCalendar":Ljava/util/Map;
    .restart local v11    # "eventValues":Landroid/content/ContentValues;
    .restart local v12    # "exceptionStart":Ljava/util/Calendar;
    .restart local v13    # "type":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 571
    nop

    .end local v2    # "rows":I
    .end local p0    # "eventID":I
    .end local p1    # "options":Ljava/util/Map;
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 589
    .end local v0    # "e":Ljava/text/ParseException;
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v5    # "eventInstance":Ljava/util/Map;
    .end local v6    # "eventCalendar":Ljava/util/Map;
    .end local v11    # "eventValues":Landroid/content/ContentValues;
    .end local v12    # "exceptionStart":Ljava/util/Calendar;
    .end local v13    # "type":Ljava/lang/Object;
    .restart local v2    # "rows":I
    .restart local p0    # "eventID":I
    .restart local p1    # "options":Ljava/util/Map;
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move/from16 v7, p0

    .line 590
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 592
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    if-lez v2, :cond_5

    const/4 v3, 0x1

    :cond_5
    return v3

    .line 594
    .end local v2    # "rows":I
    :cond_6
    move/from16 v7, p0

    return v3
.end method

.method public static requestCalendarReadWritePermission(Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;)V
    .locals 3
    .param p0, "cal"    # Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;

    .line 47
    sget-object v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->context:Landroid/app/Activity;

    const-string v1, "android.permission.WRITE_CALENDAR"

    const-string v2, "android.permission.READ_CALENDAR"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/calendar/CalendarEvents;->PERMISSION_REQUEST_CODE:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 51
    sput-object p0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->callback:Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;

    .line 52
    return-void
.end method

.method public static saveEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)I
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "details"    # Ljava/util/Map;
    .param p2, "options"    # Ljava/util/Map;

    .line 991
    invoke-static {}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->haveCalendarReadWritePermissions()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 993
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->addEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)I

    move-result v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    .local v0, "eventId":I
    if-le v0, v1, :cond_0

    .line 995
    return v0

    .line 998
    .end local v0    # "eventId":I
    :cond_0
    goto :goto_0

    .line 997
    :catch_0
    move-exception v0

    .line 999
    :goto_0
    return v1

    .line 1001
    :cond_1
    return v1
.end method

.method private static serializeAttendeeCalendar(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 951
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 953
    .local v0, "results":Ljava/util/List;
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 955
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 957
    .local v1, "attendee":Ljava/util/Map;
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "email"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    .end local v1    # "attendee":Ljava/util/Map;
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 963
    :cond_0
    return-object v0
.end method

.method private static serializeEvent(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 17
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 812
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 814
    .local v2, "event":Ljava/util/Map;
    sget-object v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    const-string v3, "GMT+8"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 816
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 817
    .local v3, "foundStartDate":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 819
    .local v4, "foundEndDate":Ljava/util/Calendar;
    const/4 v0, 0x0

    .line 820
    .local v0, "allDay":Z
    const-string v5, ""

    .line 821
    .local v5, "startDateUTC":Ljava/lang/String;
    const-string v6, ""

    .line 823
    .local v6, "endDateUTC":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 824
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 825
    sget-object v8, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 828
    :cond_0
    const/4 v8, 0x4

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 829
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 830
    sget-object v8, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 833
    :cond_1
    const/4 v8, 0x5

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_3

    .line 834
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_0
    move v0, v8

    goto :goto_1

    .line 833
    :cond_3
    move v8, v0

    .line 837
    .end local v0    # "allDay":Z
    .local v8, "allDay":Z
    :goto_1
    const/4 v0, 0x7

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v12, "endDate"

    const/4 v13, -0x1

    if-eqz v9, :cond_8

    .line 838
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 839
    .local v9, "recurrenceRule":Ljava/util/Map;
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v15, ";"

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 841
    .local v15, "recurrenceRules":[Ljava/lang/String;
    aget-object v0, v15, v11

    const-string v7, "="

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v10

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v14, "recurrence"

    invoke-interface {v2, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    aget-object v0, v15, v11

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v10

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v14, "frequency"

    invoke-interface {v9, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    const-string v0, "duration"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    if-eq v14, v13, :cond_4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 845
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    :cond_4
    array-length v0, v15

    const/4 v14, 0x2

    if-lt v0, v14, :cond_5

    aget-object v0, v15, v10

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v11

    const-string v14, "INTERVAL"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 849
    aget-object v0, v15, v10

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "interval"

    invoke-interface {v9, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    :cond_5
    array-length v0, v15

    const/4 v14, 0x3

    if-lt v0, v14, :cond_7

    .line 853
    const/4 v14, 0x2

    aget-object v0, v15, v14

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v11

    const-string v14, "UNTIL"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 855
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    sget-object v14, Lcom/isaigu/gymapp/calendar/CalendarEvents;->dateFormat:Ljava/text/SimpleDateFormat;

    const/16 v16, 0x2

    aget-object v13, v15, v16

    invoke-virtual {v13, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v10

    invoke-virtual {v14, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 856
    :catch_0
    move-exception v0

    .line 857
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 858
    .end local v0    # "e":Ljava/text/ParseException;
    :goto_2
    goto :goto_3

    .line 859
    :cond_6
    const/4 v13, 0x2

    aget-object v0, v15, v13

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v11

    const-string v14, "COUNT"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 860
    aget-object v0, v15, v13

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v7, "occurrence"

    invoke-interface {v9, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    :cond_7
    :goto_3
    const-string v0, "recurrenceRule"

    invoke-interface {v2, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    .end local v9    # "recurrenceRule":Ljava/util/Map;
    .end local v15    # "recurrenceRules":[Ljava/lang/String;
    :cond_8
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "id"

    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    const-string v0, "calendar_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->findCalendarById(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v7, "calendar"

    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    const-string v0, "title"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "description"

    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    const-string v0, "startDate"

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    invoke-interface {v2, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v7, "allDay"

    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    const/4 v0, 0x6

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "location"

    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    const/16 v0, 0x9

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->availabilityStringMatchingConstant(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "availability"

    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->findAttendeesByEventId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v7, "attendees"

    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const/16 v0, 0xa

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v7, "alarms"

    if-lez v0, :cond_9

    .line 880
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x3

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v0, v9, v10}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->findReminderByEventId(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 882
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 883
    .local v0, "emptyAlarms":Ljava/util/List;
    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    .end local v0    # "emptyAlarms":Ljava/util/List;
    :goto_4
    const-string v0, "original_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_a

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 887
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "originalId"

    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    :cond_a
    const-string v0, "original_sync_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_b

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 891
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "syncId"

    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    :cond_b
    return-object v2
.end method

.method private static serializeEventCalendar(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 8
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 911
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 913
    .local v0, "calendar":Ljava/util/Map;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "title"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    const/4 v3, 0x2

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "source"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    const/4 v3, 0x5

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->calendarAllowedAvailabilitiesFromDBString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v4, "allowedAvailabilities"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    const/4 v3, 0x6

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    const-string v3, "#FFFFFF"

    .line 921
    .local v3, "colorHex":Ljava/lang/String;
    :try_start_0
    const-string v4, "#%06X"

    new-array v5, v2, [Ljava/lang/Object;

    const v6, 0xffffff

    const/4 v7, 0x7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    and-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 924
    goto :goto_0

    .line 922
    :catch_0
    move-exception v4

    .line 923
    .local v4, "e":Ljava/lang/Exception;
    const-class v5, Lcom/isaigu/gymapp/calendar/CalendarEvents;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Error parsing calendar color"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 925
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v4, "color"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    const/4 v4, 0x3

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    const-string v7, "isPrimary"

    if-eqz v5, :cond_0

    .line 928
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    :cond_0
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 932
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    :cond_1
    const/4 v4, 0x4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 937
    .local v4, "accesslevel":I
    const/16 v5, 0x320

    const-string v6, "allowsModifications"

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2bc

    if-eq v4, v5, :cond_3

    const/16 v5, 0x258

    if-eq v4, v5, :cond_3

    const/16 v5, 0x1f4

    if-ne v4, v5, :cond_2

    goto :goto_1

    .line 943
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 941
    :cond_3
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    :goto_2
    return-object v0
.end method

.method private static serializeEventCalendars(Landroid/database/Cursor;)Ljava/util/List;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

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
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "calendarId"    # Ljava/lang/String;

    .line 609
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 610
    .local v0, "values":Landroid/content/ContentValues;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sync_events"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 611
    const-string v2, "visible"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 613
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 614
    return-void
.end method

.method public static uriForCalendar()Ljava/lang/String;
    .locals 1

    .line 1035
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
