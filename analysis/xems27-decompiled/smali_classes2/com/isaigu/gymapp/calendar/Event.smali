.class public Lcom/isaigu/gymapp/calendar/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field public alarms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/calendar/Alarms;",
            ">;"
        }
    .end annotation
.end field

.field public allDay:Z

.field public attendees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/calendar/Attendees;",
            ">;"
        }
    .end annotation
.end field

.field public calendar:Lcom/isaigu/gymapp/calendar/Calendar;

.field public calendarId:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public endDate:Ljava/util/Date;

.field public id:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public recurrence:Ljava/lang/String;

.field public recurrenceRule:Lcom/isaigu/gymapp/calendar/RecurrenceRule;

.field public startDate:Ljava/util/Date;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
