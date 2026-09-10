.class public final Lorg/apache/poi/ss/formula/PlainCellCache$Loc;
.super Ljava/lang/Object;
.source "PlainCellCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/PlainCellCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Loc"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final _bookSheetColumn:J

.field private final _rowIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "bookIndex"    # I
    .param p2, "sheetIndex"    # I
    .param p3, "rowIndex"    # I
    .param p4, "columnIndex"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1, p2, p4}, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->toBookSheetColumn(III)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_bookSheetColumn:J

    .line 37
    iput p3, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_rowIndex:I

    .line 38
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "bookSheetColumn"    # J
    .param p3, "rowIndex"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_bookSheetColumn:J

    .line 48
    iput p3, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_rowIndex:I

    .line 49
    return-void
.end method

.method public static toBookSheetColumn(III)J
    .locals 8
    .param p0, "bookIndex"    # I
    .param p1, "sheetIndex"    # I
    .param p2, "columnIndex"    # I

    .prologue
    const-wide/32 v6, 0xffff

    .line 41
    int-to-long v0, p0

    and-long/2addr v0, v6

    const/16 v2, 0x30

    shl-long/2addr v0, v2

    int-to-long v2, p1

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    int-to-long v2, p2

    and-long/2addr v2, v6

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 56
    sget-boolean v1, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    instance-of v1, p1, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v2, "these package-private cache key instances are only compared to themselves"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 57
    check-cast v0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;

    .line 58
    .local v0, "other":Lorg/apache/poi/ss/formula/PlainCellCache$Loc;
    iget-wide v2, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_bookSheetColumn:J

    iget-wide v4, v0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_bookSheetColumn:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget v1, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_rowIndex:I

    iget v2, v0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_rowIndex:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBookIndex()I
    .locals 4

    .prologue
    .line 74
    iget-wide v0, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_bookSheetColumn:J

    const/16 v2, 0x30

    shr-long/2addr v0, v2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getColumnIndex()I
    .locals 4

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_bookSheetColumn:J

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getRowIndex()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_rowIndex:I

    return v0
.end method

.method public getSheetIndex()I
    .locals 4

    .prologue
    .line 70
    iget-wide v0, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_bookSheetColumn:J

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 52
    iget-wide v0, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_bookSheetColumn:J

    iget-wide v2, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_bookSheetColumn:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_rowIndex:I

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    return v0
.end method
