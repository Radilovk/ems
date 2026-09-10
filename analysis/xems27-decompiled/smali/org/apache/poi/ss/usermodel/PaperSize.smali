.class public final enum Lorg/apache/poi/ss/usermodel/PaperSize;
.super Ljava/lang/Enum;
.source "PaperSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/PaperSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum A3_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum A4_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum A4_SMALL_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum A5_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum B4_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum B5_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum EXECUTIVE_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum FOLIO_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum LEDGER_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum LEGAL_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum LETTER_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum LETTER_SMALL_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum QUARTO_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum STANDARD_PAPER_10_14:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum STANDARD_PAPER_11_17:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum STATEMENT_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum TABLOID_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 26
    new-instance v0, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v1, "LETTER_PAPER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/PaperSize;->LETTER_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 27
    new-instance v0, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v1, "LETTER_SMALL_PAPER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/PaperSize;->LETTER_SMALL_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 28
    new-instance v0, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v1, "TABLOID_PAPER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/PaperSize;->TABLOID_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 29
    new-instance v0, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v1, "LEDGER_PAPER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/PaperSize;->LEDGER_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 30
    new-instance v0, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v1, "LEGAL_PAPER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/PaperSize;->LEGAL_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 31
    new-instance v0, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v1, "STATEMENT_PAPER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/PaperSize;->STATEMENT_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 32
    new-instance v0, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v1, "EXECUTIVE_PAPER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/PaperSize;->EXECUTIVE_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 33
    new-instance v0, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v1, "A3_PAPER"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/PaperSize;->A3_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 34
    new-instance v0, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v1, "A4_PAPER"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/PaperSize;->A4_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 35
    new-instance v0, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v1, "A4_SMALL_PAPER"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/PaperSize;->A4_SMALL_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 36
    new-instance v0, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v1, "A5_PAPER"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/PaperSize;->A5_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 37
    new-instance v0, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v1, "B4_PAPER"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/PaperSize;->B4_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 38
    new-instance v0, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v1, "B5_PAPER"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/PaperSize;->B5_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 39
    new-instance v0, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v1, "FOLIO_PAPER"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/PaperSize;->FOLIO_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 40
    new-instance v0, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v1, "QUARTO_PAPER"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/PaperSize;->QUARTO_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 41
    new-instance v0, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v1, "STANDARD_PAPER_10_14"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/PaperSize;->STANDARD_PAPER_10_14:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 42
    new-instance v0, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v1, "STANDARD_PAPER_11_17"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/PaperSize;->STANDARD_PAPER_11_17:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 25
    const/16 v1, 0x11

    new-array v1, v1, [Lorg/apache/poi/ss/usermodel/PaperSize;

    sget-object v16, Lorg/apache/poi/ss/usermodel/PaperSize;->LETTER_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    aput-object v16, v1, v2

    sget-object v2, Lorg/apache/poi/ss/usermodel/PaperSize;->LETTER_SMALL_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/PaperSize;->TABLOID_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/poi/ss/usermodel/PaperSize;->LEDGER_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/poi/ss/usermodel/PaperSize;->LEGAL_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/poi/ss/usermodel/PaperSize;->STATEMENT_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/poi/ss/usermodel/PaperSize;->EXECUTIVE_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    aput-object v2, v1, v8

    sget-object v2, Lorg/apache/poi/ss/usermodel/PaperSize;->A3_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    aput-object v2, v1, v9

    sget-object v2, Lorg/apache/poi/ss/usermodel/PaperSize;->A4_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    aput-object v2, v1, v10

    sget-object v2, Lorg/apache/poi/ss/usermodel/PaperSize;->A4_SMALL_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    aput-object v2, v1, v11

    sget-object v2, Lorg/apache/poi/ss/usermodel/PaperSize;->A5_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    aput-object v2, v1, v12

    sget-object v2, Lorg/apache/poi/ss/usermodel/PaperSize;->B4_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    aput-object v2, v1, v13

    sget-object v2, Lorg/apache/poi/ss/usermodel/PaperSize;->B5_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    aput-object v2, v1, v14

    sget-object v2, Lorg/apache/poi/ss/usermodel/PaperSize;->FOLIO_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/PaperSize;->QUARTO_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/PaperSize;->STANDARD_PAPER_10_14:Lorg/apache/poi/ss/usermodel/PaperSize;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lorg/apache/poi/ss/usermodel/PaperSize;->$VALUES:[Lorg/apache/poi/ss/usermodel/PaperSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/PaperSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/apache/poi/ss/usermodel/PaperSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/PaperSize;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/PaperSize;
    .locals 1

    .line 25
    sget-object v0, Lorg/apache/poi/ss/usermodel/PaperSize;->$VALUES:[Lorg/apache/poi/ss/usermodel/PaperSize;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/PaperSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/PaperSize;

    return-object v0
.end method
