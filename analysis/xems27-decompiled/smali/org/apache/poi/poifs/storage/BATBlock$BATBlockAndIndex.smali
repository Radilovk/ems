.class public Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;
.super Ljava/lang/Object;
.source "BATBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/storage/BATBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BATBlockAndIndex"
.end annotation


# instance fields
.field private final block:Lorg/apache/poi/poifs/storage/BATBlock;

.field private final index:I


# direct methods
.method private constructor <init>(ILorg/apache/poi/poifs/storage/BATBlock;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "block"    # Lorg/apache/poi/poifs/storage/BATBlock;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput p1, p0, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->index:I

    .line 390
    iput-object p2, p0, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->block:Lorg/apache/poi/poifs/storage/BATBlock;

    .line 391
    return-void
.end method

.method synthetic constructor <init>(ILorg/apache/poi/poifs/storage/BATBlock;Lorg/apache/poi/poifs/storage/BATBlock$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/apache/poi/poifs/storage/BATBlock;
    .param p3, "x2"    # Lorg/apache/poi/poifs/storage/BATBlock$1;

    .line 385
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;-><init>(ILorg/apache/poi/poifs/storage/BATBlock;)V

    return-void
.end method


# virtual methods
.method public getBlock()Lorg/apache/poi/poifs/storage/BATBlock;
    .locals 1

    .line 396
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->block:Lorg/apache/poi/poifs/storage/BATBlock;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 393
    iget v0, p0, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->index:I

    return v0
.end method
