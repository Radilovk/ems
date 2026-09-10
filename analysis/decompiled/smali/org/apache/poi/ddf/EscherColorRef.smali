.class public Lorg/apache/poi/ddf/EscherColorRef;
.super Ljava/lang/Object;
.source "EscherColorRef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;,
        Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FLAG_BLUE:Lorg/apache/poi/util/BitField;

.field private static final FLAG_GREEN:Lorg/apache/poi/util/BitField;

.field private static final FLAG_PALETTE_INDEX:Lorg/apache/poi/util/BitField;

.field private static final FLAG_PALETTE_RGB:Lorg/apache/poi/util/BitField;

.field private static final FLAG_RED:Lorg/apache/poi/util/BitField;

.field private static final FLAG_SCHEME_INDEX:Lorg/apache/poi/util/BitField;

.field private static final FLAG_SYSTEM_RGB:Lorg/apache/poi/util/BitField;

.field private static final FLAG_SYS_INDEX:Lorg/apache/poi/util/BitField;


# instance fields
.field colorRef:I

.field opid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-class v0, Lorg/apache/poi/ddf/EscherColorRef;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/poi/ddf/EscherColorRef;->$assertionsDisabled:Z

    .line 116
    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v1, 0x10000000

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SYS_INDEX:Lorg/apache/poi/util/BitField;

    .line 123
    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v1, 0x8000000

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SCHEME_INDEX:Lorg/apache/poi/util/BitField;

    .line 130
    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v1, 0x4000000

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SYSTEM_RGB:Lorg/apache/poi/util/BitField;

    .line 137
    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v1, 0x2000000

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_PALETTE_RGB:Lorg/apache/poi/util/BitField;

    .line 144
    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v1, 0x1000000

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_PALETTE_INDEX:Lorg/apache/poi/util/BitField;

    .line 150
    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v1, 0xff0000

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_BLUE:Lorg/apache/poi/util/BitField;

    .line 156
    new-instance v0, Lorg/apache/poi/util/BitField;

    const v1, 0xff00

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_GREEN:Lorg/apache/poi/util/BitField;

    .line 162
    new-instance v0, Lorg/apache/poi/util/BitField;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_RED:Lorg/apache/poi/util/BitField;

    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "colorRef"    # I

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/ddf/EscherColorRef;->opid:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    .line 165
    iput p1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    .line 166
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3
    .param p1, "source"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v2, 0x6

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->opid:I

    .line 28
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    .line 169
    sget-boolean v1, Lorg/apache/poi/ddf/EscherColorRef;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x4

    if-eq p3, v1, :cond_0

    if-eq p3, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 171
    :cond_0
    move v0, p2

    .line 172
    .local v0, "offset":I
    if-ne p3, v2, :cond_1

    .line 173
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->opid:I

    .line 174
    add-int/lit8 v0, v0, 0x2

    .line 176
    :cond_1
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    .line 177
    return-void
.end method


# virtual methods
.method public getPaletteIndex()I
    .locals 3

    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherColorRef;->hasPaletteIndexFlag()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 281
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_GREEN:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    sget-object v1, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_RED:Lorg/apache/poi/util/BitField;

    iget v2, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v1

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public getRGB()[I
    .locals 4

    .prologue
    .line 220
    const/4 v1, 0x3

    new-array v0, v1, [I

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_RED:Lorg/apache/poi/util/BitField;

    iget v3, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v2, v3}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_GREEN:Lorg/apache/poi/util/BitField;

    iget v3, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v2, v3}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_BLUE:Lorg/apache/poi/util/BitField;

    iget v3, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v2, v3}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v2

    aput v2, v0, v1

    .line 225
    .local v0, "rgb":[I
    return-object v0
.end method

.method public getSchemeIndex()I
    .locals 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherColorRef;->hasSchemeIndexFlag()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 273
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_RED:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSysIndexInvert()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 259
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherColorRef;->hasSysIndexFlag()Z

    move-result v2

    if-nez v2, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v1

    .line 260
    :cond_1
    sget-object v2, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_GREEN:Lorg/apache/poi/util/BitField;

    iget v3, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v2, v3}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    .line 261
    .local v0, "val":I
    sget-object v2, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->INVERT_AFTER:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    iget-object v2, v2, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->mask:Lorg/apache/poi/util/BitField;

    invoke-virtual {v2, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 262
    :cond_2
    sget-object v2, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->INVERT_HIGHBIT_AFTER:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    iget-object v2, v2, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->mask:Lorg/apache/poi/util/BitField;

    invoke-virtual {v2, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getSysIndexProcedure()Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 245
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherColorRef;->hasSysIndexFlag()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v3, v5

    .line 251
    :goto_0
    return-object v3

    .line 246
    :cond_0
    sget-object v6, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_RED:Lorg/apache/poi/util/BitField;

    iget v7, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v6, v7}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v4

    .line 247
    .local v4, "val":I
    invoke-static {}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->values()[Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 248
    .local v3, "sip":Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;
    sget-object v6, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->INVERT_AFTER:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    if-eq v3, v6, :cond_1

    sget-object v6, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->INVERT_HIGHBIT_AFTER:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    if-ne v3, v6, :cond_2

    .line 247
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 249
    :cond_2
    iget-object v6, v3, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->mask:Lorg/apache/poi/util/BitField;

    invoke-virtual {v6, v4}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .end local v3    # "sip":Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;
    :cond_3
    move-object v3, v5

    .line 251
    goto :goto_0
.end method

.method public getSysIndexSource()Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 232
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherColorRef;->hasSysIndexFlag()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v3, v5

    .line 237
    :cond_0
    :goto_0
    return-object v3

    .line 233
    :cond_1
    sget-object v6, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_RED:Lorg/apache/poi/util/BitField;

    iget v7, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v6, v7}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v4

    .line 234
    .local v4, "val":I
    invoke-static {}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->values()[Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 235
    .local v3, "sis":Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
    iget v6, v3, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->value:I

    if-eq v6, v4, :cond_0

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "sis":Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
    :cond_2
    move-object v3, v5

    .line 237
    goto :goto_0
.end method

.method public hasPaletteIndexFlag()Z
    .locals 2

    .prologue
    .line 212
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_PALETTE_INDEX:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public hasPaletteRGBFlag()Z
    .locals 2

    .prologue
    .line 204
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_PALETTE_RGB:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public hasSchemeIndexFlag()Z
    .locals 2

    .prologue
    .line 188
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SCHEME_INDEX:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public hasSysIndexFlag()Z
    .locals 2

    .prologue
    .line 180
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SYS_INDEX:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public hasSystemRGBFlag()Z
    .locals 2

    .prologue
    .line 196
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SYSTEM_RGB:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public setPaletteIndexFlag(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 216
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_PALETTE_INDEX:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    .line 217
    return-void
.end method

.method public setPaletteRGBFlag(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 208
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_PALETTE_RGB:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    .line 209
    return-void
.end method

.method public setSchemeIndexFlag(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 192
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SCHEME_INDEX:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    .line 193
    return-void
.end method

.method public setSysIndexFlag(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 184
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SYS_INDEX:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    .line 185
    return-void
.end method

.method public setSystemRGBFlag(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 200
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SYSTEM_RGB:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    .line 201
    return-void
.end method
