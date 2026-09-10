.class public final Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "ExtendedFormatRecord.java"


# static fields
.field public static final ALT_BARS:S = 0x3s

.field public static final BIG_SPOTS:S = 0x9s

.field public static final BRICKS:S = 0xas

.field public static final CENTER:S = 0x2s

.field public static final CENTER_SELECTION:S = 0x6s

.field public static final DASHED:S = 0x3s

.field public static final DASH_DOT:S = 0x9s

.field public static final DASH_DOT_DOT:S = 0xbs

.field public static final DIAMONDS:S = 0x10s

.field public static final DOTTED:S = 0x4s

.field public static final DOUBLE:S = 0x6s

.field public static final FILL:S = 0x4s

.field public static final FINE_DOTS:S = 0x2s

.field public static final GENERAL:S = 0x0s

.field public static final HAIR:S = 0x7s

.field public static final JUSTIFY:S = 0x5s

.field public static final LEFT:S = 0x1s

.field public static final MEDIUM:S = 0x2s

.field public static final MEDIUM_DASHED:S = 0x8s

.field public static final MEDIUM_DASH_DOT:S = 0xas

.field public static final MEDIUM_DASH_DOT_DOT:S = 0xcs

.field public static final NONE:S = 0x0s

.field public static final NO_FILL:S = 0x0s

.field public static final NULL:S = -0x10s

.field public static final RIGHT:S = 0x3s

.field public static final SLANTED_DASH_DOT:S = 0xds

.field public static final SOLID_FILL:S = 0x1s

.field public static final SPARSE_DOTS:S = 0x4s

.field public static final SQUARES:S = 0xfs

.field public static final THICK:S = 0x5s

.field public static final THICK_BACKWARD_DIAG:S = 0x7s

.field public static final THICK_FORWARD_DIAG:S = 0x8s

.field public static final THICK_HORZ_BANDS:S = 0x5s

.field public static final THICK_VERT_BANDS:S = 0x6s

.field public static final THIN:S = 0x1s

.field public static final THIN_BACKWARD_DIAG:S = 0xds

.field public static final THIN_FORWARD_DIAG:S = 0xes

.field public static final THIN_HORZ_BANDS:S = 0xbs

.field public static final THIN_VERT_BANDS:S = 0xcs

.field public static final VERTICAL_BOTTOM:S = 0x2s

.field public static final VERTICAL_CENTER:S = 0x1s

.field public static final VERTICAL_JUSTIFY:S = 0x3s

.field public static final VERTICAL_TOP:S = 0x0s

.field public static final XF_CELL:S = 0x0s

.field public static final XF_STYLE:S = 0x1s

.field private static final _123_prefix:Lorg/apache/poi/util/BitField;

.field private static final _adtl_diag:Lorg/apache/poi/util/BitField;

.field private static final _adtl_diag_line_style:Lorg/apache/poi/util/BitField;

.field private static final _adtl_fill_pattern:Lorg/apache/poi/util/BitField;

.field private static final _alignment:Lorg/apache/poi/util/BitField;

.field private static final _border_bottom:Lorg/apache/poi/util/BitField;

.field private static final _border_left:Lorg/apache/poi/util/BitField;

.field private static final _border_right:Lorg/apache/poi/util/BitField;

.field private static final _border_top:Lorg/apache/poi/util/BitField;

.field private static final _bottom_border_palette_idx:Lorg/apache/poi/util/BitField;

.field private static final _diag:Lorg/apache/poi/util/BitField;

.field private static final _fill_background:Lorg/apache/poi/util/BitField;

.field private static final _fill_foreground:Lorg/apache/poi/util/BitField;

.field private static final _hidden:Lorg/apache/poi/util/BitField;

.field private static final _indent:Lorg/apache/poi/util/BitField;

.field private static final _indent_not_parent_alignment:Lorg/apache/poi/util/BitField;

.field private static final _indent_not_parent_border:Lorg/apache/poi/util/BitField;

.field private static final _indent_not_parent_cell_options:Lorg/apache/poi/util/BitField;

.field private static final _indent_not_parent_font:Lorg/apache/poi/util/BitField;

.field private static final _indent_not_parent_format:Lorg/apache/poi/util/BitField;

.field private static final _indent_not_parent_pattern:Lorg/apache/poi/util/BitField;

.field private static final _justify_last:Lorg/apache/poi/util/BitField;

.field private static final _left_border_palette_idx:Lorg/apache/poi/util/BitField;

.field private static final _locked:Lorg/apache/poi/util/BitField;

.field private static final _merge_cells:Lorg/apache/poi/util/BitField;

.field private static final _parent_index:Lorg/apache/poi/util/BitField;

.field private static final _reading_order:Lorg/apache/poi/util/BitField;

.field private static final _right_border_palette_idx:Lorg/apache/poi/util/BitField;

.field private static final _rotation:Lorg/apache/poi/util/BitField;

.field private static final _shrink_to_fit:Lorg/apache/poi/util/BitField;

.field private static final _top_border_palette_idx:Lorg/apache/poi/util/BitField;

.field private static final _vertical_alignment:Lorg/apache/poi/util/BitField;

.field private static final _wrap_text:Lorg/apache/poi/util/BitField;

.field private static final _xf_type:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0xe0s


# instance fields
.field private field_1_font_index:S

.field private field_2_format_index:S

.field private field_3_cell_options:S

.field private field_4_alignment_options:S

.field private field_5_indention_options:S

.field private field_6_border_options:S

.field private field_7_palette_options:S

.field private field_8_adtl_palette_options:I

.field private field_9_fill_palette_options:S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 108
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_locked:Lorg/apache/poi/util/BitField;

    .line 109
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_hidden:Lorg/apache/poi/util/BitField;

    .line 110
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_xf_type:Lorg/apache/poi/util/BitField;

    .line 111
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_123_prefix:Lorg/apache/poi/util/BitField;

    .line 112
    const v1, 0xfff0

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_parent_index:Lorg/apache/poi/util/BitField;

    .line 116
    const/4 v1, 0x7

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_alignment:Lorg/apache/poi/util/BitField;

    .line 117
    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_wrap_text:Lorg/apache/poi/util/BitField;

    .line 118
    const/16 v0, 0x70

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_vertical_alignment:Lorg/apache/poi/util/BitField;

    .line 119
    const/16 v0, 0x80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_justify_last:Lorg/apache/poi/util/BitField;

    .line 120
    const v0, 0xff00

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_rotation:Lorg/apache/poi/util/BitField;

    .line 124
    const/16 v0, 0xf

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent:Lorg/apache/poi/util/BitField;

    .line 126
    const/16 v1, 0x10

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_shrink_to_fit:Lorg/apache/poi/util/BitField;

    .line 128
    const/16 v1, 0x20

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_merge_cells:Lorg/apache/poi/util/BitField;

    .line 130
    const/16 v1, 0xc0

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_reading_order:Lorg/apache/poi/util/BitField;

    .line 134
    const/16 v1, 0x400

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_format:Lorg/apache/poi/util/BitField;

    .line 136
    const/16 v1, 0x800

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_font:Lorg/apache/poi/util/BitField;

    .line 138
    const/16 v1, 0x1000

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_alignment:Lorg/apache/poi/util/BitField;

    .line 140
    const/16 v1, 0x2000

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_border:Lorg/apache/poi/util/BitField;

    .line 142
    const/16 v1, 0x4000

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_pattern:Lorg/apache/poi/util/BitField;

    .line 144
    const v1, 0x8000

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_cell_options:Lorg/apache/poi/util/BitField;

    .line 149
    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_left:Lorg/apache/poi/util/BitField;

    .line 150
    const/16 v0, 0xf0

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_right:Lorg/apache/poi/util/BitField;

    .line 151
    const/16 v0, 0xf00

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_top:Lorg/apache/poi/util/BitField;

    .line 152
    const v0, 0xf000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_bottom:Lorg/apache/poi/util/BitField;

    .line 157
    const/16 v0, 0x7f

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_left_border_palette_idx:Lorg/apache/poi/util/BitField;

    .line 159
    const/16 v1, 0x3f80

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_right_border_palette_idx:Lorg/apache/poi/util/BitField;

    .line 161
    const v2, 0xc000

    invoke-static {v2}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_diag:Lorg/apache/poi/util/BitField;

    .line 166
    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_top_border_palette_idx:Lorg/apache/poi/util/BitField;

    .line 168
    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_bottom_border_palette_idx:Lorg/apache/poi/util/BitField;

    .line 170
    const v2, 0x1fc000

    invoke-static {v2}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_diag:Lorg/apache/poi/util/BitField;

    .line 172
    const/high16 v2, 0x1e00000

    invoke-static {v2}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_diag_line_style:Lorg/apache/poi/util/BitField;

    .line 176
    const/high16 v2, -0x4000000

    invoke-static {v2}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_fill_pattern:Lorg/apache/poi/util/BitField;

    .line 181
    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_fill_foreground:Lorg/apache/poi/util/BitField;

    .line 182
    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_fill_background:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 194
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 195
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 198
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 199
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    .line 200
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    .line 201
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    .line 202
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    .line 203
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    .line 204
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    .line 205
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    .line 206
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    .line 207
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    .line 208
    return-void
.end method


# virtual methods
.method public cloneStyleFrom(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;)V
    .locals 1
    .param p1, "source"    # Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    .line 1803
    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    .line 1804
    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    .line 1805
    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    .line 1806
    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    .line 1807
    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    .line 1808
    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    .line 1809
    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    .line 1810
    iget v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    iput v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    .line 1811
    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    .line 1812
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1835
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1836
    return v0

    .line 1837
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1838
    return v1

    .line 1839
    :cond_1
    instance-of v2, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    if-eqz v2, :cond_b

    .line 1840
    move-object v2, p1

    check-cast v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    .line 1841
    .local v2, "other":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    iget-short v3, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    iget-short v4, v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    if-eq v3, v4, :cond_2

    .line 1842
    return v1

    .line 1843
    :cond_2
    iget-short v3, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    iget-short v4, v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    if-eq v3, v4, :cond_3

    .line 1844
    return v1

    .line 1845
    :cond_3
    iget-short v3, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    iget-short v4, v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    if-eq v3, v4, :cond_4

    .line 1846
    return v1

    .line 1847
    :cond_4
    iget-short v3, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    iget-short v4, v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    if-eq v3, v4, :cond_5

    .line 1848
    return v1

    .line 1849
    :cond_5
    iget-short v3, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    iget-short v4, v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    if-eq v3, v4, :cond_6

    .line 1850
    return v1

    .line 1851
    :cond_6
    iget-short v3, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    iget-short v4, v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    if-eq v3, v4, :cond_7

    .line 1852
    return v1

    .line 1853
    :cond_7
    iget-short v3, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    iget-short v4, v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    if-eq v3, v4, :cond_8

    .line 1854
    return v1

    .line 1855
    :cond_8
    iget v3, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    iget v4, v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    if-eq v3, v4, :cond_9

    .line 1856
    return v1

    .line 1857
    :cond_9
    iget-short v3, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    iget-short v4, v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    if-eq v3, v4, :cond_a

    .line 1858
    return v1

    .line 1859
    :cond_a
    return v0

    .line 1861
    .end local v2    # "other":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    :cond_b
    return v1
.end method

.method public get123Prefix()Z
    .locals 2

    .line 1048
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_123_prefix:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getAdtlDiag()S
    .locals 2

    .line 1560
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_diag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getAdtlDiagLineStyle()S
    .locals 2

    .line 1587
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_diag_line_style:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getAdtlFillPattern()S
    .locals 2

    .line 1618
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_fill_pattern:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getAdtlPaletteOptions()I
    .locals 1

    .line 1516
    iget v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    return v0
.end method

.method public getAlignment()S
    .locals 2

    .line 1099
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_alignment:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getAlignmentOptions()S
    .locals 1

    .line 1077
    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    return v0
.end method

.method public getBorderBottom()S
    .locals 2

    .line 1437
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_bottom:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getBorderLeft()S
    .locals 2

    .line 1356
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_left:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getBorderOptions()S
    .locals 1

    .line 1327
    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    return v0
.end method

.method public getBorderRight()S
    .locals 2

    .line 1383
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_right:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getBorderTop()S
    .locals 2

    .line 1410
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_top:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getBottomBorderPaletteIdx()S
    .locals 2

    .line 1545
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_bottom_border_palette_idx:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getCellOptions()S
    .locals 1

    .line 992
    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 1785
    const/16 v0, 0x14

    return v0
.end method

.method public getDiag()S
    .locals 2

    .line 1499
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_diag:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getFillBackground()S
    .locals 2

    .line 1662
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_fill_background:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getFillForeground()S
    .locals 2

    .line 1650
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_fill_foreground:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getFillPaletteOptions()S
    .locals 1

    .line 1635
    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    return v0
.end method

.method public getFontIndex()S
    .locals 1

    .line 965
    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    return v0
.end method

.method public getFormatIndex()S
    .locals 1

    .line 978
    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    return v0
.end method

.method public getIndent()S
    .locals 2

    .line 1187
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getIndentionOptions()S
    .locals 1

    .line 1173
    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return v0
.end method

.method public getJustifyLast()S
    .locals 2

    .line 1144
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_justify_last:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getLeftBorderPaletteIdx()S
    .locals 2

    .line 1468
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_left_border_palette_idx:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getMergeCells()Z
    .locals 2

    .line 1213
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_merge_cells:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getPaletteOptions()S
    .locals 1

    .line 1453
    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    return v0
.end method

.method public getParentIndex()S
    .locals 2

    .line 1062
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_parent_index:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getReadingOrder()S
    .locals 2

    .line 1226
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_reading_order:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getRightBorderPaletteIdx()S
    .locals 2

    .line 1482
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_right_border_palette_idx:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getRotation()S
    .locals 2

    .line 1157
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_rotation:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getShrinkToFit()Z
    .locals 2

    .line 1200
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_shrink_to_fit:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 1790
    const/16 v0, 0xe0

    return v0
.end method

.method public getTopBorderPaletteIdx()S
    .locals 2

    .line 1531
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_top_border_palette_idx:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getVerticalAlignment()S
    .locals 2

    .line 1130
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_vertical_alignment:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getWrapText()Z
    .locals 2

    .line 1112
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_wrap_text:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getXFType()S
    .locals 2

    .line 1035
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_xf_type:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1815
    const/16 v0, 0x1f

    .line 1816
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 1817
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-short v3, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    add-int/2addr v2, v3

    .line 1818
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-short v3, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    add-int/2addr v1, v3

    .line 1819
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-short v3, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    add-int/2addr v2, v3

    .line 1820
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-short v3, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    add-int/2addr v1, v3

    .line 1821
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-short v3, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    add-int/2addr v2, v3

    .line 1822
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-short v3, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    add-int/2addr v1, v3

    .line 1823
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-short v3, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    add-int/2addr v2, v3

    .line 1824
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    add-int/2addr v1, v3

    .line 1825
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-short v3, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    add-int/2addr v2, v3

    .line 1826
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public isHidden()Z
    .locals 2

    .line 1020
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_hidden:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isIndentNotParentAlignment()Z
    .locals 2

    .line 1268
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_alignment:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isIndentNotParentBorder()Z
    .locals 2

    .line 1282
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_border:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isIndentNotParentCellOptions()Z
    .locals 2

    .line 1310
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_cell_options:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isIndentNotParentFont()Z
    .locals 2

    .line 1254
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_font:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isIndentNotParentFormat()Z
    .locals 2

    .line 1240
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_format:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isIndentNotParentPattern()Z
    .locals 2

    .line 1296
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_pattern:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 2

    .line 1007
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_locked:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 1773
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFontIndex()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 1774
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFormatIndex()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 1775
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getCellOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 1776
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAlignmentOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 1777
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getIndentionOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 1778
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 1779
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getPaletteOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 1780
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAdtlPaletteOptions()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 1781
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillPaletteOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 1782
    return-void
.end method

.method public set123Prefix(Z)V
    .locals 2
    .param p1, "prefix"    # Z

    .line 306
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_123_prefix:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    .line 308
    return-void
.end method

.method public setAdtlDiag(S)V
    .locals 2
    .param p1, "diag"    # S

    .line 846
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_diag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    .line 848
    return-void
.end method

.method public setAdtlDiagLineStyle(S)V
    .locals 2
    .param p1, "diag"    # S

    .line 874
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_diag_line_style:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    .line 877
    return-void
.end method

.method public setAdtlFillPattern(S)V
    .locals 2
    .param p1, "fill"    # S

    .line 906
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_fill_pattern:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    .line 908
    return-void
.end method

.method public setAdtlPaletteOptions(S)V
    .locals 0
    .param p1, "options"    # S

    .line 800
    iput p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    .line 801
    return-void
.end method

.method public setAlignment(S)V
    .locals 2
    .param p1, "align"    # S

    .line 359
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_alignment:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    .line 361
    return-void
.end method

.method public setAlignmentOptions(S)V
    .locals 0
    .param p1, "options"    # S

    .line 339
    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    .line 340
    return-void
.end method

.method public setBorderBottom(S)V
    .locals 2
    .param p1, "border"    # S

    .line 718
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_bottom:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    .line 720
    return-void
.end method

.method public setBorderLeft(S)V
    .locals 2
    .param p1, "border"    # S

    .line 634
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_left:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    .line 636
    return-void
.end method

.method public setBorderOptions(S)V
    .locals 0
    .param p1, "options"    # S

    .line 605
    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    .line 606
    return-void
.end method

.method public setBorderRight(S)V
    .locals 2
    .param p1, "border"    # S

    .line 662
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_right:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    .line 664
    return-void
.end method

.method public setBorderTop(S)V
    .locals 2
    .param p1, "border"    # S

    .line 690
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_top:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    .line 692
    return-void
.end method

.method public setBottomBorderPaletteIdx(S)V
    .locals 2
    .param p1, "border"    # S

    .line 830
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_bottom_border_palette_idx:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    .line 833
    return-void
.end method

.method public setCellOptions(S)V
    .locals 0
    .param p1, "options"    # S

    .line 247
    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    .line 248
    return-void
.end method

.method public setDiag(S)V
    .locals 2
    .param p1, "diag"    # S

    .line 783
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_diag:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    .line 785
    return-void
.end method

.method public setFillBackground(S)V
    .locals 2
    .param p1, "color"    # S

    .line 950
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_fill_background:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    .line 953
    return-void
.end method

.method public setFillForeground(S)V
    .locals 2
    .param p1, "color"    # S

    .line 935
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_fill_foreground:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    .line 938
    return-void
.end method

.method public setFillPaletteOptions(S)V
    .locals 0
    .param p1, "options"    # S

    .line 922
    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    .line 923
    return-void
.end method

.method public setFontIndex(S)V
    .locals 0
    .param p1, "index"    # S

    .line 220
    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    .line 221
    return-void
.end method

.method public setFormatIndex(S)V
    .locals 0
    .param p1, "index"    # S

    .line 233
    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    .line 234
    return-void
.end method

.method public setHidden(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .line 276
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_hidden:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    .line 278
    return-void
.end method

.method public setIndent(S)V
    .locals 2
    .param p1, "indent"    # S

    .line 451
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    .line 453
    return-void
.end method

.method public setIndentNotParentAlignment(Z)V
    .locals 2
    .param p1, "alignment"    # Z

    .line 540
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_alignment:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    .line 543
    return-void
.end method

.method public setIndentNotParentBorder(Z)V
    .locals 2
    .param p1, "border"    # Z

    .line 556
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_border:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    .line 559
    return-void
.end method

.method public setIndentNotParentCellOptions(Z)V
    .locals 2
    .param p1, "options"    # Z

    .line 588
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_cell_options:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    .line 591
    return-void
.end method

.method public setIndentNotParentFont(Z)V
    .locals 2
    .param p1, "font"    # Z

    .line 524
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_font:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    .line 527
    return-void
.end method

.method public setIndentNotParentFormat(Z)V
    .locals 2
    .param p1, "parent"    # Z

    .line 508
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_format:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    .line 511
    return-void
.end method

.method public setIndentNotParentPattern(Z)V
    .locals 2
    .param p1, "pattern"    # Z

    .line 572
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_pattern:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    .line 575
    return-void
.end method

.method public setIndentionOptions(S)V
    .locals 0
    .param p1, "options"    # S

    .line 437
    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    .line 438
    return-void
.end method

.method public setJustifyLast(S)V
    .locals 2
    .param p1, "justify"    # S

    .line 408
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_justify_last:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    .line 410
    return-void
.end method

.method public setLeftBorderPaletteIdx(S)V
    .locals 2
    .param p1, "border"    # S

    .line 750
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_left_border_palette_idx:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    .line 753
    return-void
.end method

.method public setLocked(Z)V
    .locals 2
    .param p1, "locked"    # Z

    .line 262
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_locked:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    .line 264
    return-void
.end method

.method public setMergeCells(Z)V
    .locals 2
    .param p1, "merge"    # Z

    .line 479
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_merge_cells:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    .line 481
    return-void
.end method

.method public setPaletteOptions(S)V
    .locals 0
    .param p1, "options"    # S

    .line 735
    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    .line 736
    return-void
.end method

.method public setParentIndex(S)V
    .locals 2
    .param p1, "parent"    # S

    .line 323
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_parent_index:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    .line 325
    return-void
.end method

.method public setReadingOrder(S)V
    .locals 2
    .param p1, "order"    # S

    .line 493
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_reading_order:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    .line 495
    return-void
.end method

.method public setRightBorderPaletteIdx(S)V
    .locals 2
    .param p1, "border"    # S

    .line 765
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_right_border_palette_idx:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    .line 768
    return-void
.end method

.method public setRotation(S)V
    .locals 2
    .param p1, "rotation"    # S

    .line 422
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_rotation:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    .line 424
    return-void
.end method

.method public setShrinkToFit(Z)V
    .locals 2
    .param p1, "shrink"    # Z

    .line 465
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_shrink_to_fit:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    .line 467
    return-void
.end method

.method public setTopBorderPaletteIdx(S)V
    .locals 2
    .param p1, "border"    # S

    .line 815
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_top_border_palette_idx:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    .line 818
    return-void
.end method

.method public setVerticalAlignment(S)V
    .locals 2
    .param p1, "align"    # S

    .line 392
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_vertical_alignment:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    .line 395
    return-void
.end method

.method public setWrapText(Z)V
    .locals 2
    .param p1, "wrapped"    # Z

    .line 373
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_wrap_text:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    .line 375
    return-void
.end method

.method public setXFType(S)V
    .locals 2
    .param p1, "type"    # S

    .line 292
    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_xf_type:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    .line 294
    return-void
.end method

.method public stateSummary()[I
    .locals 3

    .line 1865
    const/16 v0, 0x9

    new-array v0, v0, [I

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    const/4 v2, 0x3

    aput v1, v0, v2

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    const/4 v2, 0x4

    aput v1, v0, v2

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    const/4 v2, 0x5

    aput v1, v0, v2

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    const/4 v2, 0x6

    aput v1, v0, v2

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    const/4 v2, 0x7

    aput v1, v0, v2

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    const/16 v2, 0x8

    aput v1, v0, v2

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1667
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1669
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[EXTENDEDFORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1670
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getXFType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1672
    const-string v1, " STYLE_RECORD_TYPE\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1674
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getXFType()S

    move-result v1

    if-nez v1, :cond_1

    .line 1676
    const-string v1, " CELL_RECORD_TYPE\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1678
    :cond_1
    :goto_0
    const-string v1, "    .fontindex       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFontIndex()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1680
    const-string v2, "    .formatindex     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFormatIndex()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1682
    const-string v2, "    .celloptions     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getCellOptions()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1684
    const-string v2, "          .islocked  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->isLocked()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1686
    const-string v2, "          .ishidden  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->isHidden()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1688
    const-string v2, "          .recordtype= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getXFType()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1690
    const-string v2, "          .parentidx = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getParentIndex()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1692
    const-string v2, "    .alignmentoptions= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAlignmentOptions()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1694
    const-string v2, "          .alignment = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAlignment()S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1696
    const-string v2, "          .wraptext  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getWrapText()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1698
    const-string v2, "          .valignment= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getVerticalAlignment()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1700
    const-string v2, "          .justlast  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getJustifyLast()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1702
    const-string v2, "          .rotation  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getRotation()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1704
    const-string v2, "    .indentionoptions= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getIndentionOptions()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1706
    const-string v2, "          .indent    = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getIndent()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1708
    const-string v2, "          .shrinktoft= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getShrinkToFit()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1710
    const-string v2, "          .mergecells= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getMergeCells()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1712
    const-string v2, "          .readngordr= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getReadingOrder()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1714
    const-string v2, "          .formatflag= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->isIndentNotParentFormat()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1716
    const-string v2, "          .fontflag  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->isIndentNotParentFont()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1718
    const-string v2, "          .prntalgnmt= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->isIndentNotParentAlignment()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1720
    const-string v2, "          .borderflag= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->isIndentNotParentBorder()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1722
    const-string v2, "          .paternflag= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->isIndentNotParentPattern()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1724
    const-string v2, "          .celloption= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->isIndentNotParentCellOptions()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1726
    const-string v2, "    .borderoptns     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderOptions()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1728
    const-string v2, "          .lftln     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderLeft()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1730
    const-string v2, "          .rgtln     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderRight()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1732
    const-string v2, "          .topln     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderTop()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1734
    const-string v2, "          .btmln     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderBottom()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1736
    const-string v2, "    .paleteoptns     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getPaletteOptions()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1738
    const-string v2, "          .leftborder= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getLeftBorderPaletteIdx()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1741
    const-string v2, "          .rghtborder= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getRightBorderPaletteIdx()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1744
    const-string v2, "          .diag      = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getDiag()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1746
    const-string v2, "    .paleteoptn2     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAdtlPaletteOptions()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1749
    const-string v2, "          .topborder = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getTopBorderPaletteIdx()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1752
    const-string v2, "          .botmborder= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBottomBorderPaletteIdx()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1755
    const-string v2, "          .adtldiag  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAdtlDiag()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1757
    const-string v2, "          .diaglnstyl= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAdtlDiagLineStyle()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1759
    const-string v2, "          .fillpattrn= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAdtlFillPattern()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1761
    const-string v2, "    .fillpaloptn     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillPaletteOptions()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1764
    const-string v2, "          .foreground= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillForeground()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1766
    const-string v2, "          .background= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillBackground()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1768
    const-string v1, "[/EXTENDEDFORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1769
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
