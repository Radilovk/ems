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
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;->name:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;->mac:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;->key:Ljava/lang/String;

    .line 80
    return-void
.end method
