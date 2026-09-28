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
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$1;)V
    .registers 2

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$NewestFirst;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .registers 8

    .prologue
    .line 117
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 118
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 119
    cmp-long v4, v0, v2

    if-gez v4, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, -0x1

    goto :goto_d

    :cond_14
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 114
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$NewestFirst;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
