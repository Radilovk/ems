.class final Lcom/isaigu/gymapp/bodytech/WiBridge$Item;
.super Ljava/lang/Object;
.source "WiBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/WiBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Item"
.end annotation


# static fields
.field static final CALLBACK:I = 0x3

.field static final NOTIFY:I = 0x2

.field static final READ:I = 0x1

.field static final WRITE:I


# instance fields
.field final cb:Lcom/clj/fastble/callback/BleWriteCallback;

.field final kind:I

.field final op:[B

.field final orig:[B


# direct methods
.method constructor <init>(I[BLcom/clj/fastble/callback/BleWriteCallback;[B)V
    .registers 5

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;->kind:I

    .line 259
    iput-object p2, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;->op:[B

    .line 260
    iput-object p3, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    .line 261
    iput-object p4, p0, Lcom/isaigu/gymapp/bodytech/WiBridge$Item;->orig:[B

    .line 262
    return-void
.end method
