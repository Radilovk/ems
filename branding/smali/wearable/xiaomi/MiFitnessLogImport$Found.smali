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
.field public fromToken:Z

.field public key:Ljava/lang/String;

.field public mac:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->mac:Ljava/lang/String;

    return-void
.end method
