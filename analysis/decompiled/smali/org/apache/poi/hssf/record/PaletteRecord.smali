.class public final Lorg/apache/poi/hssf/record/PaletteRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "PaletteRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/PaletteRecord$PColor;
    }
.end annotation


# static fields
.field public static final FIRST_COLOR_INDEX:S = 0x8s

.field public static final STANDARD_PALETTE_SIZE:B = 0x38t

.field public static final sid:S = 0x92s


# instance fields
.field private final _colors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/PaletteRecord$PColor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 41
    invoke-static {}, Lorg/apache/poi/hssf/record/PaletteRecord;->createDefaultPalette()[Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v0

    .line 42
    .local v0, "defaultPalette":[Lorg/apache/poi/hssf/record/PaletteRecord$PColor;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/List;

    .line 43
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 44
    iget-object v2, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/List;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 49
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    .line 50
    .local v0, "field_1_numcolors":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/List;

    .line 51
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 52
    iget-object v2, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    invoke-direct {v3, p1}, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method private static createDefaultPalette()[Lorg/apache/poi/hssf/record/PaletteRecord$PColor;
    .locals 10

    .prologue
    const/16 v9, 0x33

    const/16 v8, 0xcc

    const/16 v7, 0x80

    const/16 v6, 0xff

    const/4 v5, 0x0

    .line 129
    const/16 v0, 0x38

    new-array v0, v0, [Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    invoke-static {v5, v5, v5}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x1

    invoke-static {v6, v6, v6}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v6, v5, v5}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v5, v6, v5}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {v5, v5, v6}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {v6, v6, v5}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {v6, v5, v6}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {v5, v6, v6}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static {v7, v5, v5}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static {v5, v7, v5}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    invoke-static {v5, v5, v7}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    invoke-static {v7, v7, v5}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    invoke-static {v7, v5, v7}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    invoke-static {v5, v7, v7}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xc0

    const/16 v3, 0xc0

    const/16 v4, 0xc0

    invoke-static {v2, v3, v4}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    invoke-static {v7, v7, v7}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x99

    const/16 v3, 0x99

    invoke-static {v2, v3, v6}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x99

    const/16 v3, 0x66

    invoke-static {v2, v9, v3}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    invoke-static {v6, v6, v8}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    invoke-static {v8, v6, v6}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x66

    const/16 v3, 0x66

    invoke-static {v2, v5, v3}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    invoke-static {v6, v7, v7}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x66

    invoke-static {v5, v2, v8}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    invoke-static {v8, v8, v6}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    invoke-static {v5, v5, v7}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    invoke-static {v6, v5, v6}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    invoke-static {v6, v6, v5}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    invoke-static {v5, v6, v6}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    invoke-static {v7, v5, v7}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    invoke-static {v7, v5, v5}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    invoke-static {v5, v7, v7}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    invoke-static {v5, v5, v6}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    invoke-static {v5, v8, v6}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    invoke-static {v8, v6, v6}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    invoke-static {v8, v6, v8}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x99

    invoke-static {v6, v6, v2}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x99

    invoke-static {v2, v8, v6}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x99

    invoke-static {v6, v2, v8}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x99

    invoke-static {v8, v2, v6}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x99

    invoke-static {v6, v8, v2}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x66

    invoke-static {v9, v2, v6}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    invoke-static {v9, v8, v8}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x99

    invoke-static {v2, v8, v5}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    invoke-static {v6, v8, v5}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x99

    invoke-static {v6, v2, v5}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x66

    invoke-static {v6, v2, v5}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x66

    const/16 v3, 0x66

    const/16 v4, 0x99

    invoke-static {v2, v3, v4}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x96

    const/16 v3, 0x96

    const/16 v4, 0x96

    invoke-static {v2, v3, v4}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x66

    invoke-static {v5, v9, v2}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x99

    const/16 v3, 0x66

    invoke-static {v9, v2, v3}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    invoke-static {v5, v9, v5}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v9, v9, v5}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v1

    aput-object v1, v0, v9

    const/16 v1, 0x34

    const/16 v2, 0x99

    invoke-static {v2, v9, v5}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x99

    const/16 v3, 0x66

    invoke-static {v2, v9, v3}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x99

    invoke-static {v9, v9, v2}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    invoke-static {v9, v9, v9}, Lorg/apache/poi/hssf/record/PaletteRecord;->pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method private static pc(III)Lorg/apache/poi/hssf/record/PaletteRecord$PColor;
    .locals 1
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I

    .prologue
    .line 190
    new-instance v0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public getColor(I)[B
    .locals 2
    .param p1, "byteIndex"    # I

    .prologue
    .line 93
    add-int/lit8 v0, p1, -0x8

    .line 94
    .local v0, "i":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 95
    :cond_0
    const/4 v1, 0x0

    .line 97
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->getTriplet()[B

    move-result-object v1

    goto :goto_0
.end method

.method protected getDataSize()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0x92

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 72
    iget-object v1, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method public setColor(SBBB)V
    .locals 5
    .param p1, "byteIndex"    # S
    .param p2, "red"    # B
    .param p3, "green"    # B
    .param p4, "blue"    # B

    .prologue
    const/4 v4, 0x0

    .line 111
    add-int/lit8 v1, p1, -0x8

    .line 112
    .local v1, "i":I
    if-ltz v1, :cond_0

    const/16 v2, 0x38

    if-lt v1, v2, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_2

    .line 118
    iget-object v2, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    invoke-direct {v3, v4, v4, v4}, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    :cond_2
    new-instance v0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    invoke-direct {v0, p2, p3, p4}, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;-><init>(III)V

    .line 121
    .local v0, "custColor":Lorg/apache/poi/hssf/record/PaletteRecord$PColor;
    iget-object v2, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v3, "[PALETTE]\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v3, "  numcolors     = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 61
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 62
    iget-object v3, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    .line 63
    .local v1, "c":Lorg/apache/poi/hssf/record/PaletteRecord$PColor;
    const-string v3, "* colornum      = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v3, "/*colornum      = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "c":Lorg/apache/poi/hssf/record/PaletteRecord$PColor;
    :cond_0
    const-string v3, "[/PALETTE]\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
