.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;
.super Ljava/lang/Object;
.source "ScaleModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Notes"
.end annotation


# instance fields
.field public cond:I

.field public cyc:I

.field public why:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;->cyc:I

    return-void
.end method

.method static of(Lorg/json/JSONObject;)Lcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 192
    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;-><init>()V

    .line 193
    const-string v0, "cond"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;->cond:I

    .line 194
    const-string v0, "cyc"

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;->cyc:I

    .line 195
    const-string v0, "why"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "why"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_25
    iput-object v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;->why:Ljava/lang/String;

    .line 196
    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;->any()Z

    move-result v0

    if-eqz v0, :cond_2e

    move-object v1, v2

    :cond_2e
    return-object v1

    :cond_2f
    move-object v0, v1

    .line 195
    goto :goto_25
.end method


# virtual methods
.method any()Z
    .registers 2

    .prologue
    .line 176
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;->cond:I

    if-nez v0, :cond_c

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;->cyc:I

    if-gez v0, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;->why:Ljava/lang/String;

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method put(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 180
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;->cond:I

    if-eqz v0, :cond_b

    .line 181
    const-string v0, "cond"

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;->cond:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    :cond_b
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;->cyc:I

    if-ltz v0, :cond_16

    .line 184
    const-string v0, "cyc"

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;->cyc:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 186
    :cond_16
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;->why:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 187
    const-string v0, "why"

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;->why:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    :cond_21
    return-void
.end method
