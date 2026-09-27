.class public final Lcom/isaigu/gymapp/wearable/NextPlan$Snap;
.super Ljava/lang/Object;
.source "NextPlan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/NextPlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snap"
.end annotation


# instance fields
.field public activeS:I

.field public ap:Z

.field public assisted:Z

.field public ch:[I

.field public hz:I

.field public off:I

.field public on:I

.field public phz:I

.field public planS:I

.field public program:Ljava/lang/String;

.field public ps:I

.field public pw:I

.field public st:I

.field public t:J

.field public type:I

.field public work:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->program:Ljava/lang/String;

    .line 48
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    return-void
.end method


# virtual methods
.method copy()Lcom/isaigu/gymapp/wearable/NextPlan$Snap;
    .registers 5

    .prologue
    .line 55
    new-instance v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;-><init>()V

    .line 56
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->t:J

    iput-wide v2, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->t:J

    .line 57
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->program:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->program:Ljava/lang/String;

    .line 58
    iget v1, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->type:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->type:I

    .line 59
    iget v1, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    .line 60
    iget v1, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->hz:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->hz:I

    .line 61
    iget v1, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->pw:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->pw:I

    .line 62
    iget v1, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->on:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->on:I

    .line 63
    iget v1, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->off:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->off:I

    .line 64
    iget v1, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ps:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ps:I

    .line 65
    iget v1, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->phz:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->phz:I

    .line 66
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ap:Z

    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ap:Z

    .line 67
    iget v1, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    .line 68
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    .line 69
    iget v1, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->activeS:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->activeS:I

    .line 70
    iget v1, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->planS:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->planS:I

    .line 71
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->assisted:Z

    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->assisted:Z

    .line 72
    return-object v0
.end method
