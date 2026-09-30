.class final Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$NewestFirst;
.super Ljava/lang/Object;
.source "MiFitnessLogImport.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NewestFirst"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$1;)V
    .registers 2

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$NewestFirst;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;)I
    .registers 8

    .prologue
    .line 398
    iget-wide v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;->time:J

    .line 399
    iget-wide v2, p2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;->time:J

    .line 400
    cmp-long v4, v0, v2

    if-gez v4, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    const/4 v0, -0x1

    goto :goto_9

    :cond_10
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 395
    check-cast p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;

    check-cast p2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$NewestFirst;->compare(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;)I

    move-result v0

    return v0
.end method
