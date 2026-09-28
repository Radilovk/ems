.class final Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;
.super Ljava/lang/Object;
.source "MiFitnessLogImport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field final file:Ljava/io/File;

.field final name:Ljava/lang/String;

.field final time:J

.field final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/net/Uri;JLjava/lang/String;)V
    .registers 7

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;->file:Ljava/io/File;

    .line 236
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;->uri:Landroid/net/Uri;

    .line 237
    iput-wide p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;->time:J

    .line 238
    const/16 v0, 0x2f

    invoke-virtual {p5, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 239
    if-ltz v0, :cond_17

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p5

    :cond_17
    iput-object p5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;->name:Ljava/lang/String;

    .line 240
    return-void
.end method
