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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static musicInfo(ZZILjava/lang/String;Ljava/lang/String;II)[B
    .registers 13

    .line 54
    if-eqz p0, :cond_5

    const/4 p0, 0x1

    const/4 v0, 0x1

    goto :goto_c

    :cond_5
    if-eqz p1, :cond_a

    const/4 p0, 0x2

    const/4 v0, 0x2

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 55
    :goto_c
    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->musicInfo(IILjava/lang/String;Ljava/lang/String;II)[B

    move-result-object p0

    return-object p0
.end method

.method static onCommand(IILjava/util/Map;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    const/16 v1, 0x12

    if-eq p0, v1, :cond_6

    .line 32
    return v0

    .line 34
    :cond_6
    sget-object p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote$Listener;

    .line 35
    const/4 v1, 0x1

    if-nez p1, :cond_11

    .line 36
    if-eqz p0, :cond_10

    .line 37
    invoke-interface {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote$Listener;->onMusicRequest()V

    .line 39
    :cond_10
    return v1

    .line 41
    :cond_11
    const/4 v2, 0x2

    if-ne p1, v2, :cond_24

    .line 42
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->mediaKey(Ljava/util/Map;)[I

    move-result-object p1

    .line 43
    if-eqz p1, :cond_23

    if-eqz p0, :cond_23

    .line 44
    aget p2, p1, v0

    aget p1, p1, v1

    invoke-interface {p0, p2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote$Listener;->onMediaKey(II)V

    .line 46
    :cond_23
    return v1

    .line 48
    :cond_24
    return v1
.end method

.method public static setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote$Listener;)V
    .registers 1

    .line 26
    sput-object p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote$Listener;

    .line 27
    return-void
.end method
