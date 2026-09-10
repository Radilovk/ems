.class final enum Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;
.super Ljava/lang/Enum;
.source "HeaderFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/usermodel/HeaderFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MarkupTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum BOLD_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum DATE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum DOUBLE_UNDERLINE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum FILE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum FULL_FILE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum ITALIC_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum NUM_PAGES_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum PAGE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum PICTURE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum SHEET_NAME_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum STRIKETHROUGH_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum SUBSCRIPT_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum SUPERSCRIPT_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum TIME_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum UNDERLINE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;


# instance fields
.field private final _occursInPairs:Z

.field private final _representation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 306
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const-string v1, "SHEET_NAME_FIELD"

    const/4 v2, 0x0

    const-string v3, "&A"

    invoke-direct {v0, v1, v2, v3, v2}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->SHEET_NAME_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    .line 307
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const-string v1, "DATE_FIELD"

    const/4 v3, 0x1

    const-string v4, "&D"

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->DATE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    .line 308
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const-string v1, "FILE_FIELD"

    const/4 v4, 0x2

    const-string v5, "&F"

    invoke-direct {v0, v1, v4, v5, v2}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->FILE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    .line 309
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const-string v1, "FULL_FILE_FIELD"

    const/4 v5, 0x3

    const-string v6, "&Z"

    invoke-direct {v0, v1, v5, v6, v2}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->FULL_FILE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    .line 310
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const-string v1, "PAGE_FIELD"

    const/4 v6, 0x4

    const-string v7, "&P"

    invoke-direct {v0, v1, v6, v7, v2}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->PAGE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    .line 311
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const-string v1, "TIME_FIELD"

    const/4 v7, 0x5

    const-string v8, "&T"

    invoke-direct {v0, v1, v7, v8, v2}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->TIME_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    .line 312
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const-string v1, "NUM_PAGES_FIELD"

    const/4 v8, 0x6

    const-string v9, "&N"

    invoke-direct {v0, v1, v8, v9, v2}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->NUM_PAGES_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    .line 314
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const-string v1, "PICTURE_FIELD"

    const/4 v9, 0x7

    const-string v10, "&G"

    invoke-direct {v0, v1, v9, v10, v2}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->PICTURE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    .line 316
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const-string v1, "BOLD_FIELD"

    const/16 v10, 0x8

    const-string v11, "&B"

    invoke-direct {v0, v1, v10, v11, v3}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->BOLD_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    .line 317
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const-string v1, "ITALIC_FIELD"

    const/16 v11, 0x9

    const-string v12, "&I"

    invoke-direct {v0, v1, v11, v12, v3}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->ITALIC_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    .line 318
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const-string v1, "STRIKETHROUGH_FIELD"

    const/16 v12, 0xa

    const-string v13, "&S"

    invoke-direct {v0, v1, v12, v13, v3}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->STRIKETHROUGH_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    .line 319
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const-string v1, "SUBSCRIPT_FIELD"

    const/16 v13, 0xb

    const-string v14, "&Y"

    invoke-direct {v0, v1, v13, v14, v3}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->SUBSCRIPT_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    .line 320
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const-string v1, "SUPERSCRIPT_FIELD"

    const/16 v14, 0xc

    const-string v15, "&X"

    invoke-direct {v0, v1, v14, v15, v3}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->SUPERSCRIPT_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    .line 321
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const-string v1, "UNDERLINE_FIELD"

    const/16 v15, 0xd

    const-string v14, "&U"

    invoke-direct {v0, v1, v15, v14, v3}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->UNDERLINE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    .line 322
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const-string v1, "DOUBLE_UNDERLINE_FIELD"

    const/16 v14, 0xe

    const-string v15, "&E"

    invoke-direct {v0, v1, v14, v15, v3}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->DOUBLE_UNDERLINE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    .line 305
    const/16 v1, 0xf

    new-array v1, v1, [Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    sget-object v15, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->SHEET_NAME_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    aput-object v15, v1, v2

    sget-object v2, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->DATE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->FILE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->FULL_FILE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->PAGE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->TIME_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->NUM_PAGES_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    aput-object v2, v1, v8

    sget-object v2, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->PICTURE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    aput-object v2, v1, v9

    sget-object v2, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->BOLD_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    aput-object v2, v1, v10

    sget-object v2, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->ITALIC_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    aput-object v2, v1, v11

    sget-object v2, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->STRIKETHROUGH_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    aput-object v2, v1, v12

    sget-object v2, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->SUBSCRIPT_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    aput-object v2, v1, v13

    sget-object v2, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->SUPERSCRIPT_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->UNDERLINE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    aput-object v0, v1, v14

    sput-object v1, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->$VALUES:[Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p3, "sequence"    # Ljava/lang/String;
    .param p4, "occursInPairs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 327
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 328
    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->_representation:Ljava/lang/String;

    .line 329
    iput-boolean p4, p0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->_occursInPairs:Z

    .line 330
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 305
    const-class v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;
    .locals 1

    .line 305
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->$VALUES:[Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, [Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    return-object v0
.end method


# virtual methods
.method public getRepresentation()Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->_representation:Ljava/lang/String;

    return-object v0
.end method

.method public occursPairs()Z
    .locals 1

    .line 343
    iget-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->_occursInPairs:Z

    return v0
.end method
