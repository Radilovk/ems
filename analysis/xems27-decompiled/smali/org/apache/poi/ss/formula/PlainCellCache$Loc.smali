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

    .line 29
    const-class v0, Lorg/apache/poi/ss/formula/PlainCellCache;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "bookIndex"    # I
    .param p2, "sheetIndex"    # I
    .param p3, "rowIndex"    # I
    .param p4, "columnIndex"    # I

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
    .locals 0
    .param p1, "bookSheetColumn"    # J
    .param p3, "rowIndex"    # I

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
    .locals 7
    .param p0, "bookIndex"    # I
    .param p1, "sheetIndex"    # I
    .param p2, "columnIndex"    # I

    .line 41
    int-to-long v0, p0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    const/16 v4, 0x30

    shl-long/2addr v0, v4

    int-to-long v4, p1

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    int-to-long v4, p2

    and-long/2addr v2, v4

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 56
    nop

    .line 57
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;

    .line 58
    .local v0, "other":Lorg/apache/poi/ss/formula/PlainCellCache$Loc;
    iget-wide v1, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_bookSheetColumn:J

    iget-wide v3, v0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_bookSheetColumn:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget v1, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_rowIndex:I

    iget v2, v0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_rowIndex:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getBookIndex()I
    .locals 4

    .line 74
    iget-wide v0, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_bookSheetColumn:J

    const/16 v2, 0x30

    shr-long/2addr v0, v2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getColumnIndex()I
    .locals 4

    .line 66
    iget-wide v0, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_bookSheetColumn:J

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getRowIndex()I
    .locals 1

    .line 62
    iget v0, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_rowIndex:I

    return v0
.end method

.method public getSheetIndex()I
    .locals 4

    .line 70
    iget-wide v0, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_bookSheetColumn:J

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 52
    iget-wide v0, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_bookSheetColumn:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    iget v0, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_rowIndex:I

    mul-int/lit8 v0, v0, 0x11

    add-int/2addr v1, v0

    return v1
.end method
