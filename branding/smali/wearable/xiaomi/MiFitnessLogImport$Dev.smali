.class public final Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;
.super Ljava/lang/Object;
.source "MiFitnessLogImport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dev"
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field public final mac:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;->name:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;->mac:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;->key:Ljava/lang/String;

    .line 63
    return-void
.end method
