.class public final Lorg/apache/poi/hssf/record/cf/BorderFormatting;
.super Ljava/lang/Object;
.source "BorderFormatting.java"


# static fields
.field public static final BORDER_DASHED:S = 0x3s

.field public static final BORDER_DASH_DOT:S = 0x9s

.field public static final BORDER_DASH_DOT_DOT:S = 0xbs

.field public static final BORDER_DOTTED:S = 0x7s

.field public static final BORDER_DOUBLE:S = 0x6s

.field public static final BORDER_HAIR:S = 0x4s

.field public static final BORDER_MEDIUM:S = 0x2s

.field public static final BORDER_MEDIUM_DASHED:S = 0x8s

.field public static final BORDER_MEDIUM_DASH_DOT:S = 0xas

.field public static final BORDER_MEDIUM_DASH_DOT_DOT:S = 0xcs

.field public static final BORDER_NONE:S = 0x0s

.field public static final BORDER_SLANTED_DASH_DOT:S = 0xds

.field public static final BORDER_THICK:S = 0x5s

.field public static final BORDER_THIN:S = 0x1s

.field private static final bordBlTrtLineOnOff:Lorg/apache/poi/util/BitField;

.field private static final bordBottomLineColor:Lorg/apache/poi/util/BitField;

.field private static final bordBottomLineStyle:Lorg/apache/poi/util/BitField;

.field private static final bordDiagLineColor:Lorg/apache/poi/util/BitField;

.field private static final bordDiagLineStyle:Lorg/apache/poi/util/BitField;

.field private static final bordLeftLineColor:Lorg/apache/poi/util/BitField;

.field private static final bordLeftLineStyle:Lorg/apache/poi/util/BitField;

.field private static final bordRightLineColor:Lorg/apache/poi/util/BitField;

.field private static final bordRightLineStyle:Lorg/apache/poi/util/BitField;

.field private static final bordTlBrLineOnOff:Lorg/apache/poi/util/BitField;

.field private static final bordTopLineColor:Lorg/apache/poi/util/BitField;

.field private static final bordTopLineStyle:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_13_border_styles1:I

.field private field_14_border_styles2:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const/16 v0, 0xf

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordLeftLineStyle:Lorg/apache/poi/util/BitField;

    .line 66
    const/16 v0, 0xf0

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordRightLineStyle:Lorg/apache/poi/util/BitField;

    .line 67
    const/16 v0, 0xf00

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTopLineStyle:Lorg/apache/poi/util/BitField;

    .line 68
    const v0, 0xf000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBottomLineStyle:Lorg/apache/poi/util/BitField;

    .line 69
    const/high16 v0, 0x7f0000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordLeftLineColor:Lorg/apache/poi/util/BitField;

    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordRightLineColor:Lorg/apache/poi/util/BitField;

    .line 71
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTlBrLineOnOff:Lorg/apache/poi/util/BitField;

    .line 72
    const/high16 v0, -0x80000000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBlTrtLineOnOff:Lorg/apache/poi/util/BitField;

    .line 75
    const/16 v0, 0x7f

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTopLineColor:Lorg/apache/poi/util/BitField;

    .line 76
    const/16 v0, 0x3f80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBottomLineColor:Lorg/apache/poi/util/BitField;

    .line 77
    const v0, 0x1fc000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordDiagLineColor:Lorg/apache/poi/util/BitField;

    .line 78
    const/high16 v0, 0x1e00000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordDiagLineStyle:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    .line 83
    iput v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    .line 89
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    .line 90
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 450
    new-instance v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;-><init>()V

    .line 451
    .local v0, "rec":Lorg/apache/poi/hssf/record/cf/BorderFormatting;
    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    iput v1, v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    .line 452
    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    iput v1, v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    .line 453
    return-object v0
.end method

.method public getBorderBottom()I
    .locals 2

    .line 266
    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBottomLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getBorderDiagonal()I
    .locals 2

    .line 310
    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordDiagLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getBorderLeft()I
    .locals 2

    .line 134
    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordLeftLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getBorderRight()I
    .locals 2

    .line 178
    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordRightLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getBorderTop()I
    .locals 2

    .line 222
    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTopLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getBottomBorderColor()I
    .locals 2

    .line 379
    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBottomLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getDiagonalBorderColor()I
    .locals 2

    .line 396
    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordDiagLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getLeftBorderColor()I
    .locals 2

    .line 327
    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordLeftLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getRightBorderColor()I
    .locals 2

    .line 344
    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordRightLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getTopBorderColor()I
    .locals 2

    .line 361
    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTopLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public isBackwardDiagonalOn()Z
    .locals 2

    .line 428
    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTlBrLineOnOff:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isForwardDiagonalOn()Z
    .locals 2

    .line 421
    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBlTrtLineOnOff:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(I[B)I
    .locals 2
    .param p1, "offset"    # I
    .param p2, "data"    # [B

    .line 457
    add-int/lit8 v0, p1, 0x0

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 458
    add-int/lit8 v0, p1, 0x4

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 459
    const/16 v0, 0x8

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 462
    iget v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 463
    iget v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 464
    return-void
.end method

.method public setBackwardDiagonalOn(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 414
    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTlBrLineOnOff:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    .line 415
    return-void
.end method

.method public setBorderBottom(I)V
    .locals 2
    .param p1, "border"    # I

    .line 244
    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBottomLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    .line 245
    return-void
.end method

.method public setBorderDiagonal(I)V
    .locals 2
    .param p1, "border"    # I

    .line 288
    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordDiagLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    .line 289
    return-void
.end method

.method public setBorderLeft(I)V
    .locals 2
    .param p1, "border"    # I

    .line 112
    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordLeftLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    .line 113
    return-void
.end method

.method public setBorderRight(I)V
    .locals 2
    .param p1, "border"    # I

    .line 156
    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordRightLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    .line 157
    return-void
.end method

.method public setBorderTop(I)V
    .locals 2
    .param p1, "border"    # I

    .line 200
    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTopLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    .line 201
    return-void
.end method

.method public setBottomBorderColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 370
    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBottomLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    .line 371
    return-void
.end method

.method public setDiagonalBorderColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 387
    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordDiagLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    .line 388
    return-void
.end method

.method public setForwardDiagonalOn(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 405
    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBlTrtLineOnOff:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    .line 406
    return-void
.end method

.method public setLeftBorderColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 318
    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordLeftLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    .line 319
    return-void
.end method

.method public setRightBorderColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 335
    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordRightLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    .line 336
    return-void
.end method

.method public setTopBorderColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 352
    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTopLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    .line 353
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 433
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 434
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "    [Border Formatting]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    const-string v1, "          .lftln     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderLeft()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    const-string v2, "          .rgtln     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderRight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    const-string v2, "          .topln     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    const-string v2, "          .btmln     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderBottom()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    const-string v2, "          .leftborder= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getLeftBorderColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    const-string v2, "          .rghtborder= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getRightBorderColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    const-string v2, "          .topborder= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getTopBorderColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    const-string v2, "          .bottomborder= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBottomBorderColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    const-string v2, "          .fwdiag= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->isForwardDiagonalOn()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 444
    const-string v2, "          .bwdiag= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->isBackwardDiagonalOn()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    const-string v1, "    [/Border Formatting]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
