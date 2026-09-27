.class final Lcom/isaigu/gymapp/wearable/Schedule$ByBegin;
.super Ljava/lang/Object;
.source "Schedule.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/Schedule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ByBegin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/isaigu/gymapp/wearable/Schedule$Appt;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/isaigu/gymapp/wearable/Schedule$Appt;Lcom/isaigu/gymapp/wearable/Schedule$Appt;)I
    .registers 7

    .prologue
    .line 199
    iget-wide v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    iget-wide v2, p2, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    iget-wide v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    iget-wide v2, p2, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_9

    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 196
    check-cast p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    check-cast p2, Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/Schedule$ByBegin;->compare(Lcom/isaigu/gymapp/wearable/Schedule$Appt;Lcom/isaigu/gymapp/wearable/Schedule$Appt;)I

    move-result v0

    return v0
.end method
