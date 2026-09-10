.class public Lorg/apache/poi/hssf/util/PaneInformation;
.super Ljava/lang/Object;
.source "PaneInformation.java"


# static fields
.field public static final PANE_LOWER_LEFT:B = 0x2t

.field public static final PANE_LOWER_RIGHT:B = 0x0t

.field public static final PANE_UPPER_LEFT:B = 0x3t

.field public static final PANE_UPPER_RIGHT:B = 0x1t


# instance fields
.field private activePane:B

.field private frozen:Z

.field private leftColumn:S

.field private topRow:S

.field private x:S

.field private y:S


# direct methods
.method public constructor <init>(SSSSBZ)V
    .locals 1
    .param p1, "x"    # S
    .param p2, "y"    # S
    .param p3, "top"    # S
    .param p4, "left"    # S
    .param p5, "active"    # B
    .param p6, "frozen"    # Z

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/util/PaneInformation;->frozen:Z

    .line 43
    iput-short p1, p0, Lorg/apache/poi/hssf/util/PaneInformation;->x:S

    .line 44
    iput-short p2, p0, Lorg/apache/poi/hssf/util/PaneInformation;->y:S

    .line 45
    iput-short p3, p0, Lorg/apache/poi/hssf/util/PaneInformation;->topRow:S

    .line 46
    iput-short p4, p0, Lorg/apache/poi/hssf/util/PaneInformation;->leftColumn:S

    .line 47
    iput-byte p5, p0, Lorg/apache/poi/hssf/util/PaneInformation;->activePane:B

    .line 48
    iput-boolean p6, p0, Lorg/apache/poi/hssf/util/PaneInformation;->frozen:Z

    .line 49
    return-void
.end method


# virtual methods
.method public getActivePane()B
    .locals 1

    .line 97
    iget-byte v0, p0, Lorg/apache/poi/hssf/util/PaneInformation;->activePane:B

    return v0
.end method

.method public getHorizontalSplitPosition()S
    .locals 1

    .line 69
    iget-short v0, p0, Lorg/apache/poi/hssf/util/PaneInformation;->y:S

    return v0
.end method

.method public getHorizontalSplitTopRow()S
    .locals 1

    .line 77
    iget-short v0, p0, Lorg/apache/poi/hssf/util/PaneInformation;->topRow:S

    return v0
.end method

.method public getVerticalSplitLeftColumn()S
    .locals 1

    .line 85
    iget-short v0, p0, Lorg/apache/poi/hssf/util/PaneInformation;->leftColumn:S

    return v0
.end method

.method public getVerticalSplitPosition()S
    .locals 1

    .line 59
    iget-short v0, p0, Lorg/apache/poi/hssf/util/PaneInformation;->x:S

    return v0
.end method

.method public isFreezePane()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lorg/apache/poi/hssf/util/PaneInformation;->frozen:Z

    return v0
.end method
