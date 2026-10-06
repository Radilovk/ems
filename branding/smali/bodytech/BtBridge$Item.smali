.class final Lcom/isaigu/gymapp/bodytech/BtBridge$Item;
.super Ljava/lang/Object;
.source "BtBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Item"
.end annotation


# instance fields
.field final cb:Lcom/clj/fastble/callback/BleWriteCallback;

.field final frame:[B

.field final orig:[B


# direct methods
.method constructor <init>([BLcom/clj/fastble/callback/BleWriteCallback;[B)V
    .registers 4

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->frame:[B

    .line 277
    iput-object p2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    .line 278
    iput-object p3, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->orig:[B

    .line 279
    return-void
.end method
