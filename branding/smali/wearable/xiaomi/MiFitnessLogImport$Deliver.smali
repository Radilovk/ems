.class final Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Deliver;
.super Ljava/lang/Object;
.source "MiFitnessLogImport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Deliver"
.end annotation


# instance fields
.field private final cb:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

.field private final f:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    .registers 3

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Deliver;->cb:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

    .line 323
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Deliver;->f:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;

    .line 324
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 328
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Deliver;->cb:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Deliver;->f:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Deliver;->f:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;

    if-nez v0, :cond_e

    const-string v0, "no key"

    :goto_a
    invoke-interface {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;->onFound(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;Ljava/lang/String;)V

    .line 329
    return-void

    .line 328
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method
