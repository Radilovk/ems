.class public final Lorg/apache/poi/hssf/util/CellReference;
.super Lorg/apache/poi/ss/util/CellReference;
.source "CellReference.java"


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "pRow"    # I
    .param p2, "pCol"    # I

    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    .line 36
    return-void
.end method

.method public constructor <init>(IIZZ)V
    .locals 6
    .param p1, "pRow"    # I
    .param p2, "pCol"    # I
    .param p3, "pAbsRow"    # Z
    .param p4, "pAbsCol"    # Z

    .line 39
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "cellRef"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 0
    .param p1, "pSheetName"    # Ljava/lang/String;
    .param p2, "pRow"    # I
    .param p3, "pCol"    # I
    .param p4, "pAbsRow"    # Z
    .param p5, "pAbsCol"    # Z

    .line 43
    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    .line 44
    return-void
.end method
