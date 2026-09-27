.class public final Lcom/isaigu/gymapp/wearable/Schedule;
.super Ljava/lang/Object;
.source "Schedule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/Schedule$Cal;,
        Lcom/isaigu/gymapp/wearable/Schedule$Appt;,
        Lcom/isaigu/gymapp/wearable/Schedule$ByBegin;
    }
.end annotation


# static fields
.field private static final CYR:Ljava/lang/String; = "\u0430\u0431\u0432\u0433\u0434\u0435\u0436\u0437\u0438\u0439\u043a\u043b\u043c\u043d\u043e\u043f\u0440\u0441\u0442\u0443\u0444\u0445\u0446\u0447\u0448\u0449\u044a\u044c\u044e\u044f\u044d\u044b\u0451"

.field private static final EMAIL:Ljava/util/regex/Pattern;

.field private static final LAT:[Ljava/lang/String;

.field private static final PHONE:Ljava/util/regex/Pattern;

.field static final PREFS:Ljava/lang/String; = "xems_schedule"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 321
    const-string v0, "[A-Za-z0-9._%+\\-]+@[A-Za-z0-9.\\-]+\\.[A-Za-z]{2,}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/Schedule;->EMAIL:Ljava/util/regex/Pattern;

    .line 322
    const-string v0, "\\+?[0-9][0-9 ()\\-/.]{6,}[0-9]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/Schedule;->PHONE:Ljava/util/regex/Pattern;

    .line 493
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "a"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "b"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "v"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "g"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "d"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "e"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "zh"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "ch"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "sh"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "sht"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "iu"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "ia"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "e"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/Schedule;->LAT:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;JJ)J
    .registers 16

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v2, -0x1

    .line 179
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/Schedule;->writableCalendar(Landroid/content/Context;)J

    move-result-wide v6

    .line 180
    cmp-long v0, v6, v8

    if-ltz v0, :cond_14

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/Schedule;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-nez p1, :cond_16

    :cond_14
    move-wide v0, v2

    .line 213
    :cond_15
    :goto_15
    return-wide v0

    .line 184
    :cond_16
    :try_start_16
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v0, :cond_e5

    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    move-object v4, v0

    .line 185
    :goto_1d
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "XEMS"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    if-eqz v0, :cond_43

    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_43

    .line 187
    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_43
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    if-eqz v0, :cond_62

    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_62

    .line 190
    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_62
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 193
    const-string v1, "calendar_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 194
    const-string v1, "title"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "description"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "dtstart"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 197
    const-string v1, "dtend"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 198
    const-string v1, "eventTimezone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_ea

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 201
    :goto_ad
    cmp-long v6, v0, v8

    if-ltz v6, :cond_15

    .line 202
    new-instance v6, Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    invoke-direct {v6}, Lcom/isaigu/gymapp/wearable/Schedule$Appt;-><init>()V

    .line 203
    iput-wide v0, v6, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->eventId:J

    .line 204
    iput-wide p2, v6, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    .line 205
    iput-wide p4, v6, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->end:J

    .line 206
    iput-object v4, v6, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->title:Ljava/lang/String;

    .line 207
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->desc:Ljava/lang/String;

    .line 208
    invoke-static {p0, v6, p1}, Lcom/isaigu/gymapp/wearable/Schedule;->link(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/Schedule$Appt;Lcom/isaigu/gymapp/bean/TrainUser;)V
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_c7} :catch_c9

    goto/16 :goto_15

    .line 211
    :catch_c9
    move-exception v0

    .line 212
    const-string v1, "plan"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v2

    .line 213
    goto/16 :goto_15

    .line 184
    :cond_e5
    :try_start_e5
    const-string v0, ""
    :try_end_e7
    .catch Ljava/lang/Throwable; {:try_start_e5 .. :try_end_e7} :catch_c9

    move-object v4, v0

    goto/16 :goto_1d

    :cond_ea
    move-wide v0, v2

    .line 200
    goto :goto_ad
.end method

.method private static attendees(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .registers 8

    .prologue
    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    const/4 v0, 0x0

    .line 294
    const/4 v2, 0x2

    :try_start_7
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "attendeeEmail"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "attendeeName"

    aput-object v4, v2, v3

    invoke-static {p0, p1, p2, v2}, Landroid/provider/CalendarContract$Attendees;->query(Landroid/content/ContentResolver;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 296
    :goto_17
    if-eqz v0, :cond_50

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 297
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/Schedule;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/Schedule;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_44} :catch_45
    .catchall {:try_start_7 .. :try_end_44} :catchall_56

    goto :goto_17

    .line 299
    :catch_45
    move-exception v2

    .line 301
    if-eqz v0, :cond_4b

    .line 302
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 305
    :cond_4b
    :goto_4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 301
    :cond_50
    if-eqz v0, :cond_4b

    .line 302
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4b

    .line 301
    :catchall_56
    move-exception v1

    if-eqz v0, :cond_5c

    .line 302
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_5c
    throw v1
.end method

.method static byId(Ljava/util/List;J)Lcom/isaigu/gymapp/bean/TrainUser;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;J)",
            "Lcom/isaigu/gymapp/bean/TrainUser;"
        }
    .end annotation

    .prologue
    .line 449
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1b

    .line 450
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 451
    if-eqz v0, :cond_17

    iget-wide v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_17

    .line 455
    :goto_16
    return-object v0

    .line 449
    :cond_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 455
    :cond_1b
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static calendarId(Landroid/content/Context;)J
    .registers 7

    .prologue
    const-wide/16 v0, -0x1

    .line 90
    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/Schedule;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "cal"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d} :catch_f

    move-result-wide v0

    .line 92
    :goto_e
    return-wide v0

    .line 91
    :catch_f
    move-exception v2

    goto :goto_e
.end method

.method public static calendars(Landroid/content/Context;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/Schedule$Cal;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 101
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/Schedule;->canRead(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    move-object v0, v6

    .line 127
    :goto_d
    return-object v0

    .line 107
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "calendar_displayName"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "visible"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "calendar_displayName"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_2d} :catch_a1
    .catchall {:try_start_e .. :try_end_2d} :catchall_97

    move-result-object v1

    .line 111
    :cond_2e
    :goto_2e
    if-eqz v1, :cond_91

    :try_start_30
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 112
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2e

    .line 115
    new-instance v2, Lcom/isaigu/gymapp/wearable/Schedule$Cal;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/Schedule$Cal;-><init>()V

    .line 116
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/wearable/Schedule$Cal;->id:J

    .line 117
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7b

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_55
    iput-object v0, v2, Lcom/isaigu/gymapp/wearable/Schedule$Cal;->name:Ljava/lang/String;

    .line 118
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_5a} :catch_5b
    .catchall {:try_start_30 .. :try_end_5a} :catchall_9f

    goto :goto_2e

    .line 120
    :catch_5b
    move-exception v0

    .line 121
    :goto_5c
    :try_start_5c
    const-string v2, "plan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calendars: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_5c .. :try_end_74} :catchall_9f

    .line 123
    if-eqz v1, :cond_79

    .line 124
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_79
    :goto_79
    move-object v0, v6

    .line 127
    goto :goto_d

    .line 117
    :cond_7b
    :try_start_7b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v2, Lcom/isaigu/gymapp/wearable/Schedule$Cal;->id:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_8f} :catch_5b
    .catchall {:try_start_7b .. :try_end_8f} :catchall_9f

    move-result-object v0

    goto :goto_55

    .line 123
    :cond_91
    if-eqz v1, :cond_79

    .line 124
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_79

    .line 123
    :catchall_97
    move-exception v0

    move-object v1, v7

    :goto_99
    if-eqz v1, :cond_9e

    .line 124
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_9e
    throw v0

    .line 123
    :catchall_9f
    move-exception v0

    goto :goto_99

    .line 120
    :catch_a1
    move-exception v0

    move-object v1, v7

    goto :goto_5c
.end method

.method public static canRead(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    if-nez p0, :cond_6

    move v0, v1

    .line 78
    :cond_5
    :goto_5
    return v0

    .line 75
    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_5

    .line 78
    const-string v2, "android.permission.READ_CALENDAR"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_5
.end method

.method public static canWrite(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 131
    if-nez p0, :cond_4

    .line 134
    :cond_3
    :goto_3
    return v0

    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_12

    const-string v1, "android.permission.WRITE_CALENDAR"

    .line 135
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    :cond_12
    const/4 v0, 0x1

    goto :goto_3
.end method

.method static digits(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 461
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 462
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1b

    const/16 v3, 0x39

    if-gt v2, v3, :cond_1b

    .line 463
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 460
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 466
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static fold(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 497
    if-nez p0, :cond_5

    .line 498
    const-string v0, ""

    .line 508
    :goto_4
    return-object v0

    .line 500
    :cond_5
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 502
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 503
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 504
    const-string v4, "\u0430\u0431\u0432\u0433\u0434\u0435\u0436\u0437\u0438\u0439\u043a\u043b\u043c\u043d\u043e\u043f\u0440\u0441\u0442\u0443\u0444\u0445\u0446\u0447\u0448\u0449\u044a\u044c\u044e\u044f\u044d\u044b\u0451"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 505
    if-ltz v4, :cond_33

    sget-object v1, Lcom/isaigu/gymapp/wearable/Schedule;->LAT:[Ljava/lang/String;

    aget-object v1, v1, v4

    :goto_2d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 505
    :cond_33
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_2d

    .line 508
    :cond_38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kh"

    const-string v2, "h"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ts"

    const-string v2, "c"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tz"

    const-string v2, "c"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "y"

    const-string v2, "i"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "j"

    const-string v2, "i"

    .line 509
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "w"

    const-string v2, "v"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x"

    const-string v2, "ks"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ph"

    const-string v2, "f"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ii"

    const-string v2, "i"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static link(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/Schedule$Appt;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 7

    .prologue
    .line 414
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 426
    :cond_4
    :goto_4
    return-void

    .line 417
    :cond_5
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/Schedule;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 418
    if-nez p2, :cond_35

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "link:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/Schedule;->linkKey(Lcom/isaigu/gymapp/wearable/Schedule$Appt;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 423
    :goto_29
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 424
    iput-object p2, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 425
    if-eqz p2, :cond_52

    const-string v0, "link"

    :goto_32
    iput-object v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->by:Ljava/lang/String;

    goto :goto_4

    .line 421
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "link:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/Schedule;->linkKey(Lcom/isaigu/gymapp/wearable/Schedule$Appt;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_29

    .line 425
    :cond_52
    const-string v0, ""

    goto :goto_32
.end method

.method static linkKey(Lcom/isaigu/gymapp/wearable/Schedule$Appt;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 429
    sget-object v0, Lcom/isaigu/gymapp/wearable/Schedule;->EMAIL:Ljava/util/regex/Pattern;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->who:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 431
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 445
    :cond_31
    :goto_31
    return-object v0

    .line 433
    :cond_32
    sget-object v0, Lcom/isaigu/gymapp/wearable/Schedule;->PHONE:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 435
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/Schedule;->digits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/Schedule;->tail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_31

    .line 440
    :cond_53
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/Schedule;->words(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    const/4 v0, 0x0

    move v1, v0

    :goto_60
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_79

    .line 443
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_60

    .line 445
    :cond_79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_31
.end method

.method static match(Lcom/isaigu/gymapp/wearable/Schedule$Appt;Ljava/util/List;Landroid/content/SharedPreferences;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/wearable/Schedule$Appt;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x7

    const/4 v2, 0x0

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->where:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->who:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 327
    if-eqz p2, :cond_67

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "link:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/Schedule;->linkKey(Lcom/isaigu/gymapp/wearable/Schedule$Appt;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, -0x1

    invoke-interface {p2, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 329
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_67

    .line 330
    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/wearable/Schedule;->byId(Ljava/util/List;J)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_67

    .line 332
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 333
    const-string v0, "link"

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->by:Ljava/lang/String;

    .line 393
    :cond_66
    :goto_66
    return-void

    .line 339
    :cond_67
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 340
    sget-object v0, Lcom/isaigu/gymapp/wearable/Schedule;->EMAIL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 341
    :goto_72
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 342
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_72

    :cond_86
    move v1, v2

    .line 344
    :goto_87
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_bc

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bc

    .line 345
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 346
    if-eqz v0, :cond_b8

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    if-eqz v5, :cond_b8

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 347
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 348
    const-string v0, "email"

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->by:Ljava/lang/String;

    goto :goto_66

    .line 344
    :cond_b8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_87

    .line 353
    :cond_bc
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 354
    sget-object v0, Lcom/isaigu/gymapp/wearable/Schedule;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 355
    :cond_c7
    :goto_c7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 356
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/Schedule;->digits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/Schedule;->tail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v7, :cond_c7

    .line 358
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c7

    :cond_e3
    move v1, v2

    .line 361
    :goto_e4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_121

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_121

    .line 362
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 363
    if-eqz v0, :cond_11a

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    if-eqz v3, :cond_11a

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/Schedule;->digits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/Schedule;->tail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 364
    :goto_106
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v7, :cond_11d

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11d

    .line 365
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 366
    const-string v0, "phone"

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->by:Ljava/lang/String;

    goto/16 :goto_66

    .line 363
    :cond_11a
    const-string v3, ""

    goto :goto_106

    .line 361
    :cond_11d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e4

    .line 371
    :cond_121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->who:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/Schedule;->words(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 372
    const/4 v5, 0x0

    move v6, v2

    move v1, v2

    move v3, v2

    .line 375
    :goto_144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_173

    .line 376
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 377
    if-nez v0, :cond_156

    .line 375
    :cond_152
    :goto_152
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_144

    .line 380
    :cond_156
    iget-object v4, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/wearable/Schedule;->nameHits(Ljava/lang/String;Ljava/util/List;)I

    move-result v4

    iget-object v8, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/isaigu/gymapp/wearable/Schedule;->nameHits(Ljava/lang/String;Ljava/util/List;)I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 381
    if-le v4, v3, :cond_16c

    move v1, v2

    move v3, v4

    move-object v5, v0

    .line 384
    goto :goto_152

    .line 385
    :cond_16c
    if-ne v4, v3, :cond_152

    if-lez v4, :cond_152

    .line 386
    const/4 v0, 0x1

    move v1, v0

    goto :goto_152

    .line 389
    :cond_173
    if-eqz v5, :cond_66

    if-nez v1, :cond_66

    .line 390
    iput-object v5, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 391
    const-string v0, "name"

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->by:Ljava/lang/String;

    goto/16 :goto_66
.end method

.method private static nameHits(Ljava/lang/String;Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 397
    if-nez p0, :cond_4

    .line 409
    :cond_3
    :goto_3
    return v1

    .line 400
    :cond_4
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/Schedule;->words(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 401
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 404
    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 405
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 409
    :cond_22
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_3
.end method

.method static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 84
    const-string v0, "xems_schedule"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static read(Landroid/content/Context;JJ)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/Schedule$Appt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 222
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/Schedule;->canRead(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    move-object v0, v6

    .line 280
    :goto_c
    return-object v0

    .line 225
    :cond_d
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/Schedule;->calendarId(Landroid/content/Context;)J

    move-result-wide v4

    .line 226
    const/4 v7, 0x0

    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 229
    :try_start_16
    sget-object v1, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 230
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 231
    invoke-static {v1, p3, p4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 232
    const-string v3, "allDay=0 AND visible=1"

    .line 233
    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-ltz v2, :cond_41

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND calendar_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 236
    :cond_41
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "event_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "begin"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "end"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "title"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "description"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "eventLocation"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "calendar_id"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "calendar_displayName"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string v5, "eventStatus"

    aput-object v5, v2, v4

    const/16 v4, 0x9

    const-string v5, "selfAttendeeStatus"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "begin ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_83} :catch_161
    .catchall {:try_start_16 .. :try_end_83} :catchall_149

    move-result-object v2

    .line 243
    :cond_84
    :goto_84
    if-eqz v2, :cond_143

    :try_start_86
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_143

    .line 244
    const/16 v1, 0x8

    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_9d

    const/16 v1, 0x8

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_84

    .line 247
    :cond_9d
    new-instance v1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/Schedule$Appt;-><init>()V

    .line 248
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->eventId:J

    .line 249
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    .line 250
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->end:J

    .line 251
    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/Schedule;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->title:Ljava/lang/String;

    .line 252
    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/Schedule;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->desc:Ljava/lang/String;

    .line 253
    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/Schedule;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->where:Ljava/lang/String;

    .line 254
    const/4 v3, 0x6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->calendarId:J

    .line 255
    const/4 v3, 0x7

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/Schedule;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->calendar:Ljava/lang/String;

    .line 256
    iget-wide v4, v1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->end:J

    iget-wide v8, v1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    cmp-long v3, v4, v8

    if-gtz v3, :cond_fa

    .line 257
    iget-wide v4, v1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    const-wide/32 v8, 0x1b7740

    add-long/2addr v4, v8

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->end:J

    .line 259
    :cond_fa
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_fd
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_fd} :catch_fe
    .catchall {:try_start_86 .. :try_end_fd} :catchall_15f

    goto :goto_84

    .line 261
    :catch_fe
    move-exception v1

    .line 262
    :goto_ff
    :try_start_ff
    const-string v3, "plan"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_117
    .catchall {:try_start_ff .. :try_end_117} :catchall_15f

    .line 264
    if-eqz v2, :cond_11c

    .line 265
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 268
    :cond_11c
    :goto_11c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/Schedule;->users()Ljava/util/List;

    move-result-object v4

    .line 269
    const/4 v1, 0x0

    .line 271
    :try_start_121
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/Schedule;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_124
    .catch Ljava/lang/Throwable; {:try_start_121 .. :try_end_124} :catch_151

    move-result-object v1

    move-object v2, v1

    .line 274
    :goto_126
    const/4 v1, 0x0

    move v3, v1

    :goto_128
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_154

    .line 275
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    .line 276
    iget-wide v8, v1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->eventId:J

    invoke-static {v0, v8, v9}, Lcom/isaigu/gymapp/wearable/Schedule;->attendees(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->who:Ljava/lang/String;

    .line 277
    invoke-static {v1, v4, v2}, Lcom/isaigu/gymapp/wearable/Schedule;->match(Lcom/isaigu/gymapp/wearable/Schedule$Appt;Ljava/util/List;Landroid/content/SharedPreferences;)V

    .line 274
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_128

    .line 264
    :cond_143
    if-eqz v2, :cond_11c

    .line 265
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_11c

    .line 264
    :catchall_149
    move-exception v0

    move-object v2, v7

    :goto_14b
    if-eqz v2, :cond_150

    .line 265
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_150
    throw v0

    .line 272
    :catch_151
    move-exception v2

    move-object v2, v1

    goto :goto_126

    .line 279
    :cond_154
    new-instance v0, Lcom/isaigu/gymapp/wearable/Schedule$ByBegin;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/Schedule$ByBegin;-><init>()V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v0, v6

    .line 280
    goto/16 :goto_c

    .line 264
    :catchall_15f
    move-exception v0

    goto :goto_14b

    .line 261
    :catch_161
    move-exception v1

    move-object v2, v7

    goto :goto_ff
.end method

.method public static setCalendarId(Landroid/content/Context;J)V
    .registers 6

    .prologue
    .line 97
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/Schedule;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cal"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 98
    return-void
.end method

.method private static str(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 513
    if-eqz p0, :cond_3

    :goto_2
    return-object p0

    :cond_3
    const-string p0, ""

    goto :goto_2
.end method

.method private static tail(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 470
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x9

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_12
    return-object p0
.end method

.method static users()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    .line 311
    if-eqz v1, :cond_13

    iget-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    if-eqz v0, :cond_13

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    .line 316
    :goto_11
    return-object v0

    .line 314
    :catch_12
    move-exception v0

    .line 316
    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_11
.end method

.method static words(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 475
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 476
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/Schedule;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 477
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 478
    :goto_10
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v0, v2, :cond_43

    .line 479
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2e

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 480
    :goto_20
    const/16 v6, 0x61

    if-lt v2, v6, :cond_31

    const/16 v6, 0x7a

    if-gt v2, v6, :cond_31

    .line 481
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 478
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 479
    :cond_2e
    const/16 v2, 0x20

    goto :goto_20

    .line 483
    :cond_31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v6, 0x2

    if-lt v2, v6, :cond_3f

    .line 484
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_3f
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2b

    .line 489
    :cond_43
    return-object v3
.end method

.method public static writableCalendar(Landroid/content/Context;)J
    .registers 15

    .prologue
    .line 140
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/Schedule;->canRead(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 141
    const-wide/16 v0, -0x1

    .line 174
    :cond_8
    :goto_8
    return-wide v0

    .line 143
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/Schedule;->calendarId(Landroid/content/Context;)J

    move-result-wide v12

    .line 144
    const-wide/16 v10, -0x1

    .line 145
    const-wide/16 v8, -0x1

    .line 146
    const/4 v6, 0x0

    .line 148
    :try_start_12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "calendar_access_level"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "isPrimary"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "visible"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_35} :catch_8c
    .catchall {:try_start_12 .. :try_end_35} :catchall_ae

    move-result-object v4

    move-wide v2, v8

    move-wide v6, v10

    .line 152
    :cond_38
    :goto_38
    if-eqz v4, :cond_7d

    :try_start_3a
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 153
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 154
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v8, 0x1f4

    if-lt v5, v8, :cond_38

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_52} :catch_bb
    .catchall {:try_start_3a .. :try_end_52} :catchall_b5

    move-result v5

    if-eqz v5, :cond_38

    .line 157
    cmp-long v5, v0, v12

    if-nez v5, :cond_5f

    .line 170
    if-eqz v4, :cond_8

    .line 171
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .line 160
    :cond_5f
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_75

    const/4 v5, 0x2

    :try_start_66
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_75

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_70} :catch_bb
    .catchall {:try_start_66 .. :try_end_70} :catchall_b5

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_75

    move-wide v6, v0

    .line 163
    :cond_75
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-gez v5, :cond_c3

    :goto_7b
    move-wide v2, v0

    .line 166
    goto :goto_38

    .line 170
    :cond_7d
    if-eqz v4, :cond_c1

    .line 171
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-wide v0, v6

    .line 174
    :goto_83
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_8

    move-wide v0, v2

    goto/16 :goto_8

    .line 167
    :catch_8c
    move-exception v0

    move-object v1, v6

    move-wide v2, v8

    .line 168
    :goto_8f
    :try_start_8f
    const-string v4, "plan"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calendars: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a7
    .catchall {:try_start_8f .. :try_end_a7} :catchall_b8

    .line 170
    if-eqz v1, :cond_bf

    .line 171
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-wide v0, v10

    goto :goto_83

    .line 170
    :catchall_ae
    move-exception v0

    :goto_af
    if-eqz v6, :cond_b4

    .line 171
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_b4
    throw v0

    .line 170
    :catchall_b5
    move-exception v0

    move-object v6, v4

    goto :goto_af

    :catchall_b8
    move-exception v0

    move-object v6, v1

    goto :goto_af

    .line 167
    :catch_bb
    move-exception v0

    move-object v1, v4

    move-wide v10, v6

    goto :goto_8f

    :cond_bf
    move-wide v0, v10

    goto :goto_83

    :cond_c1
    move-wide v0, v6

    goto :goto_83

    :cond_c3
    move-wide v0, v2

    goto :goto_7b
.end method
