.class final Lcom/isaigu/gymapp/bodytech/BtLoad$Wait;
.super Ljava/lang/Object;
.source "BtLoad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtLoad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Wait"
.end annotation


# instance fields
.field final d:Lcom/clj/fastble/data/BleDevice;

.field final since:J


# direct methods
.method constructor <init>(Lcom/clj/fastble/data/BleDevice;J)V
    .registers 4

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Wait;->d:Lcom/clj/fastble/data/BleDevice;

    .line 52
    iput-wide p2, p0, Lcom/isaigu/gymapp/bodytech/BtLoad$Wait;->since:J

    .line 53
    return-void
.end method
