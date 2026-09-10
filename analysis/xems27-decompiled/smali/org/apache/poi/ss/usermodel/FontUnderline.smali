.class public final enum Lorg/apache/poi/ss/usermodel/FontUnderline;
.super Ljava/lang/Enum;
.source "FontUnderline.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/FontUnderline;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/FontUnderline;

.field public static final enum DOUBLE:Lorg/apache/poi/ss/usermodel/FontUnderline;

.field public static final enum DOUBLE_ACCOUNTING:Lorg/apache/poi/ss/usermodel/FontUnderline;

.field public static final enum NONE:Lorg/apache/poi/ss/usermodel/FontUnderline;

.field public static final enum SINGLE:Lorg/apache/poi/ss/usermodel/FontUnderline;

.field public static final enum SINGLE_ACCOUNTING:Lorg/apache/poi/ss/usermodel/FontUnderline;

.field private static _table:[Lorg/apache/poi/ss/usermodel/FontUnderline;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 32
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontUnderline;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ss/usermodel/FontUnderline;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontUnderline;->SINGLE:Lorg/apache/poi/ss/usermodel/FontUnderline;

    .line 39
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontUnderline;

    const-string v1, "DOUBLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/poi/ss/usermodel/FontUnderline;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontUnderline;->DOUBLE:Lorg/apache/poi/ss/usermodel/FontUnderline;

    .line 46
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontUnderline;

    const-string v1, "SINGLE_ACCOUNTING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/poi/ss/usermodel/FontUnderline;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontUnderline;->SINGLE_ACCOUNTING:Lorg/apache/poi/ss/usermodel/FontUnderline;

    .line 53
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontUnderline;

    const-string v1, "DOUBLE_ACCOUNTING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/poi/ss/usermodel/FontUnderline;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontUnderline;->DOUBLE_ACCOUNTING:Lorg/apache/poi/ss/usermodel/FontUnderline;

    .line 58
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontUnderline;

    const-string v1, "NONE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/poi/ss/usermodel/FontUnderline;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontUnderline;->NONE:Lorg/apache/poi/ss/usermodel/FontUnderline;

    .line 25
    new-array v1, v7, [Lorg/apache/poi/ss/usermodel/FontUnderline;

    sget-object v7, Lorg/apache/poi/ss/usermodel/FontUnderline;->SINGLE:Lorg/apache/poi/ss/usermodel/FontUnderline;

    aput-object v7, v1, v2

    sget-object v2, Lorg/apache/poi/ss/usermodel/FontUnderline;->DOUBLE:Lorg/apache/poi/ss/usermodel/FontUnderline;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/FontUnderline;->SINGLE_ACCOUNTING:Lorg/apache/poi/ss/usermodel/FontUnderline;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/poi/ss/usermodel/FontUnderline;->DOUBLE_ACCOUNTING:Lorg/apache/poi/ss/usermodel/FontUnderline;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lorg/apache/poi/ss/usermodel/FontUnderline;->$VALUES:[Lorg/apache/poi/ss/usermodel/FontUnderline;

    .line 88
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/poi/ss/usermodel/FontUnderline;

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontUnderline;->_table:[Lorg/apache/poi/ss/usermodel/FontUnderline;

    .line 90
    invoke-static {}, Lorg/apache/poi/ss/usermodel/FontUnderline;->values()[Lorg/apache/poi/ss/usermodel/FontUnderline;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/ss/usermodel/FontUnderline;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 91
    .local v3, "c":Lorg/apache/poi/ss/usermodel/FontUnderline;
    sget-object v4, Lorg/apache/poi/ss/usermodel/FontUnderline;->_table:[Lorg/apache/poi/ss/usermodel/FontUnderline;

    invoke-virtual {v3}, Lorg/apache/poi/ss/usermodel/FontUnderline;->getValue()I

    move-result v5

    aput-object v3, v4, v5

    .line 90
    .end local v3    # "c":Lorg/apache/poi/ss/usermodel/FontUnderline;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "arr$":[Lorg/apache/poi/ss/usermodel/FontUnderline;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lorg/apache/poi/ss/usermodel/FontUnderline;->value:I

    .line 65
    return-void
.end method

.method public static valueOf(B)Lorg/apache/poi/ss/usermodel/FontUnderline;
    .locals 2
    .param p0, "value"    # B

    .line 101
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x22

    if-eq p0, v0, :cond_0

    move-object v0, v1

    .line 115
    .local v0, "val":Lorg/apache/poi/ss/usermodel/FontUnderline;
    sget-object v0, Lorg/apache/poi/ss/usermodel/FontUnderline;->NONE:Lorg/apache/poi/ss/usermodel/FontUnderline;

    goto :goto_0

    .line 101
    .end local v0    # "val":Lorg/apache/poi/ss/usermodel/FontUnderline;
    :cond_0
    move-object v0, v1

    .line 106
    .restart local v0    # "val":Lorg/apache/poi/ss/usermodel/FontUnderline;
    sget-object v0, Lorg/apache/poi/ss/usermodel/FontUnderline;->DOUBLE_ACCOUNTING:Lorg/apache/poi/ss/usermodel/FontUnderline;

    .line 107
    goto :goto_0

    .line 101
    .end local v0    # "val":Lorg/apache/poi/ss/usermodel/FontUnderline;
    :cond_1
    move-object v0, v1

    .line 109
    .restart local v0    # "val":Lorg/apache/poi/ss/usermodel/FontUnderline;
    sget-object v0, Lorg/apache/poi/ss/usermodel/FontUnderline;->SINGLE_ACCOUNTING:Lorg/apache/poi/ss/usermodel/FontUnderline;

    .line 110
    goto :goto_0

    .line 103
    .end local v0    # "val":Lorg/apache/poi/ss/usermodel/FontUnderline;
    :cond_2
    sget-object v0, Lorg/apache/poi/ss/usermodel/FontUnderline;->DOUBLE:Lorg/apache/poi/ss/usermodel/FontUnderline;

    .line 104
    .restart local v0    # "val":Lorg/apache/poi/ss/usermodel/FontUnderline;
    goto :goto_0

    .line 101
    .end local v0    # "val":Lorg/apache/poi/ss/usermodel/FontUnderline;
    :cond_3
    move-object v0, v1

    .line 112
    .restart local v0    # "val":Lorg/apache/poi/ss/usermodel/FontUnderline;
    sget-object v0, Lorg/apache/poi/ss/usermodel/FontUnderline;->SINGLE:Lorg/apache/poi/ss/usermodel/FontUnderline;

    .line 113
    nop

    .line 118
    :goto_0
    return-object v0
.end method

.method public static valueOf(I)Lorg/apache/poi/ss/usermodel/FontUnderline;
    .locals 1
    .param p0, "value"    # I

    .line 96
    sget-object v0, Lorg/apache/poi/ss/usermodel/FontUnderline;->_table:[Lorg/apache/poi/ss/usermodel/FontUnderline;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FontUnderline;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/apache/poi/ss/usermodel/FontUnderline;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/FontUnderline;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/FontUnderline;
    .locals 1

    .line 25
    sget-object v0, Lorg/apache/poi/ss/usermodel/FontUnderline;->$VALUES:[Lorg/apache/poi/ss/usermodel/FontUnderline;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/FontUnderline;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/FontUnderline;

    return-object v0
.end method


# virtual methods
.method public getByteValue()B
    .locals 3

    .line 72
    sget-object v0, Lorg/apache/poi/ss/usermodel/FontUnderline$1;->$SwitchMap$org$apache$poi$ss$usermodel$FontUnderline:[I

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/FontUnderline;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 84
    return v2

    .line 80
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_1
    const/16 v0, 0x21

    return v0

    .line 76
    :cond_2
    const/16 v0, 0x22

    return v0

    .line 74
    :cond_3
    return v1
.end method

.method public getValue()I
    .locals 1

    .line 68
    iget v0, p0, Lorg/apache/poi/ss/usermodel/FontUnderline;->value:I

    return v0
.end method
