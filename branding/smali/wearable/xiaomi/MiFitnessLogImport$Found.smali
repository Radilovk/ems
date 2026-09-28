.class public final Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;
.super Ljava/lang/Object;
.source "MiFitnessLogImport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Found"
.end annotation


# instance fields
.field public final devices:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;",
            ">;"
        }
    .end annotation
.end field

.field public error:Ljava/lang/String;

.field public files:I

.field public fromToken:Z

.field public key:Ljava/lang/String;

.field public listed:I

.field public mac:Ljava/lang/String;

.field public macHint:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public zips:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->mac:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->macHint:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->name:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->error:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->devices:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public hasAny()Z
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->devices:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
