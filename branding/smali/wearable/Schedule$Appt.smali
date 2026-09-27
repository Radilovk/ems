.class public final Lcom/isaigu/gymapp/wearable/Schedule$Appt;
.super Ljava/lang/Object;
.source "Schedule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/Schedule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Appt"
.end annotation


# instance fields
.field public begin:J

.field public by:Ljava/lang/String;

.field public calendar:Ljava/lang/String;

.field public calendarId:J

.field public desc:Ljava/lang/String;

.field public end:J

.field public eventId:J

.field public title:Ljava/lang/String;

.field public user:Lcom/isaigu/gymapp/bean/TrainUser;

.field public where:Ljava/lang/String;

.field public who:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->title:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->desc:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->where:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->who:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->calendar:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->by:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .registers 5

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->eventId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_26

    .line 57
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    .line 58
    :goto_18
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_26

    .line 62
    :goto_20
    return-object v0

    .line 57
    :cond_21
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    goto :goto_18

    .line 62
    :cond_26
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->title:Ljava/lang/String;

    goto :goto_20
.end method
