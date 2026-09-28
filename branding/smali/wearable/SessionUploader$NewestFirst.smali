.class final Lcom/isaigu/gymapp/wearable/SessionUploader$NewestFirst;
.super Ljava/lang/Object;
.source "SessionUploader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/SessionUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NewestFirst"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 151
    check-cast p1, Lorg/json/JSONObject;

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/SessionUploader$NewestFirst;->compare(Lorg/json/JSONObject;Lorg/json/JSONObject;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/json/JSONObject;Lorg/json/JSONObject;)I
    .registers 8

    .prologue
    .line 154
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 155
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 156
    cmp-long v4, v0, v2

    if-gez v4, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    const/4 v0, -0x1

    goto :goto_11

    :cond_18
    const/4 v0, 0x0

    goto :goto_11
.end method
