.class public final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;
.super Ljava/lang/Object;
.source "XiaomiBandRemote.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote$Listener;
    }
.end annotation


# static fields
.field public static final KEY_NEXT:I = 0x4

.field public static final KEY_PAUSE:I = 0x1

.field public static final KEY_PLAY:I = 0x0

.field public static final KEY_PREV:I = 0x3

.field public static final KEY_VOLUME:I = 0x5

.field private static volatile listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote$Listener;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static musicInfo(ZZILjava/lang/String;Ljava/lang/String;II)[B
    .registers 13

    .prologue
    .line 54
    if-eqz p0, :cond_d

    const/4 v0, 0x1

    :goto_3
    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    .line 55
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->musicInfo(IILjava/lang/String;Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0

    .line 54
    :cond_d
    if-eqz p1, :cond_11

    const/4 v0, 0x2

    goto :goto_3

    :cond_11
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static onCommand(IILjava/util/Map;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 31
    const/16 v2, 0x12

    if-eq p0, v2, :cond_7

    .line 48
    :goto_6
    return v0

    .line 34
    :cond_7
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote$Listener;

    .line 35
    if-nez p1, :cond_12

    .line 36
    if-eqz v2, :cond_10

    .line 37
    invoke-interface {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote$Listener;->onMusicRequest()V

    :cond_10
    move v0, v1

    .line 39
    goto :goto_6

    .line 41
    :cond_12
    const/4 v3, 0x2

    if-ne p1, v3, :cond_26

    .line 42
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->mediaKey(Ljava/util/Map;)[I

    move-result-object v3

    .line 43
    if-eqz v3, :cond_24

    if-eqz v2, :cond_24

    .line 44
    aget v0, v3, v0

    aget v3, v3, v1

    invoke-interface {v2, v0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote$Listener;->onMediaKey(II)V

    :cond_24
    move v0, v1

    .line 46
    goto :goto_6

    :cond_26
    move v0, v1

    .line 48
    goto :goto_6
.end method

.method public static setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote$Listener;)V
    .registers 1

    .prologue
    .line 26
    sput-object p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote$Listener;

    .line 27
    return-void
.end method
