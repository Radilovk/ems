.class public final Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;
.super Ljava/lang/Object;
.source "BluetensProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Step"
.end annotation


# instance fields
.field public burstMs:I

.field public hz:I

.field public restHz:I

.field public restS:I

.field public riseMs:I

.field public seconds:I

.field public us:I

.field public workS:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0x258

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    .line 32
    const/4 v0, 0x5

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    .line 34
    const/16 v0, 0xfa

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    .line 38
    const/4 v0, 0x4

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    return-void
.end method


# virtual methods
.method public aussie()Z
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->burstMs:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public continuous()Z
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public copy()Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;
    .registers 3

    .prologue
    .line 47
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;-><init>()V

    .line 48
    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    .line 49
    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    .line 50
    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    .line 51
    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    .line 52
    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    .line 53
    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    .line 54
    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->riseMs:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->riseMs:I

    .line 55
    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->burstMs:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->burstMs:I

    .line 56
    return-object v0
.end method
