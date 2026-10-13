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
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x258

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    .line 26
    const/4 v0, 0x5

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    .line 28
    const/16 v0, 0xfa

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    .line 32
    const/4 v0, 0x4

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    return-void
.end method


# virtual methods
.method public continuous()Z
    .registers 2

    .prologue
    .line 51
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
    .line 39
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;-><init>()V

    .line 40
    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    .line 41
    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    .line 42
    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    .line 43
    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    .line 44
    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    .line 45
    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    .line 46
    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->riseMs:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->riseMs:I

    .line 47
    return-object v0
.end method
