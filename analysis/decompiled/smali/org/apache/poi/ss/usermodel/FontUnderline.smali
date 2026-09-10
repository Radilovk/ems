.class public final enum Lorg/apache/poi/ss/usermodel/FontUnderline;
.super Ljava/lang/Enum;
.source "FontUnderline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/usermodel/FontUnderline$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
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
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 32
    new-instance v4, Lorg/apache/poi/ss/usermodel/FontUnderline;

    const-string v5, "SINGLE"

    invoke-direct {v4, v5, v11, v7}, Lorg/apache/poi/ss/usermodel/FontUnderline;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/FontUnderline;->SINGLE:Lorg/apache/poi/ss/usermodel/FontUnderline;

    .line 39
    new-instance v4, Lorg/apache/poi/ss/usermodel/FontUnderline;

    const-string v5, "DOUBLE"

    invoke-direct {v4, v5, v7, v8}, Lorg/apache/poi/ss/usermodel/FontUnderline;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/FontUnderline;->DOUBLE:Lorg/apache/poi/ss/usermodel/FontUnderline;

    .line 46
    new-instance v4, Lorg/apache/poi/ss/usermodel/FontUnderline;

    const-string v5, "SINGLE_ACCOUNTING"

    invoke-direct {v4, v5, v8, v9}, Lorg/apache/poi/ss/usermodel/FontUnderline;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/FontUnderline;->SINGLE_ACCOUNTING:Lorg/apache/poi/ss/usermodel/FontUnderline;

    .line 53
    new-instance v4, Lorg/apache/poi/ss/usermodel/FontUnderline;

    const-string v5, "DOUBLE_ACCOUNTING"

    invoke-direct {v4, v5, v9, v10}, Lorg/apache/poi/ss/usermodel/FontUnderline;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/FontUnderline;->DOUBLE_ACCOUNTING:Lorg/apache/poi/ss/usermodel/FontUnderline;

    .line 58
    new-instance v4, Lorg/apache/poi/ss/usermodel/FontUnderline;

    const-string v5, "NONE"

    const/4 v6, 0x5

    invoke-direct {v4, v5, v10, v6}, Lorg/apache/poi/ss/usermodel/FontUnderline;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/FontUnderline;->NONE:Lorg/apache/poi/ss/usermodel/FontUnderline;

    .line 25
    const/4 v4, 0x5

    new-array v4, v4, [Lorg/apache/poi/ss/usermodel/FontUnderline;

    sget-object v5, Lorg/apache/poi/ss/usermodel/FontUnderline;->SINGLE:Lorg/apache/poi/ss/usermodel/FontUnderline;

    aput-object v5, v4, v11

    sget-object v5, Lorg/apache/poi/ss/usermodel/FontUnderline;->DOUBLE:Lorg/apache/poi/ss/usermodel/FontUnderline;

    aput-object v5, v4, v7

    sget-object v5, Lorg/apache/poi/ss/usermodel/FontUnderline;->SINGLE_ACCOUNTING:Lorg/apache/poi/ss/usermodel/FontUnderline;

    aput-object v5, v4, v8

    sget-object v5, Lorg/apache/poi/ss/usermodel/FontUnderline;->DOUBLE_ACCOUNTING:Lorg/apache/poi/ss/usermodel/FontUnderline;

    aput-object v5, v4, v9

    sget-object v5, Lorg/apache/poi/ss/usermodel/FontUnderline;->NONE:Lorg/apache/poi/ss/usermodel/FontUnderline;

    aput-object v5, v4, v10

    sput-object v4, Lorg/apache/poi/ss/usermodel/FontUnderline;->$VALUES:[Lorg/apache/poi/ss/usermodel/FontUnderline;

    .line 88
    const/4 v4, 0x6

    new-array v4, v4, [Lorg/apache/poi/ss/usermodel/FontUnderline;

    sput-object v4, Lorg/apache/poi/ss/usermodel/FontUnderline;->_table:[Lorg/apache/poi/ss/usermodel/FontUnderline;

    .line 90
    invoke-static {}, Lorg/apache/poi/ss/usermodel/FontUnderline;->values()[Lorg/apache/poi/ss/usermodel/FontUnderline;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/ss/usermodel/FontUnderline;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 91
    .local v1, "c":Lorg/apache/poi/ss/usermodel/FontUnderline;
    sget-object v4, Lorg/apache/poi/ss/usermodel/FontUnderline;->_table:[Lorg/apache/poi/ss/usermodel/FontUnderline;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FontUnderline;->getValue()I

    move-result v5

    aput-object v1, v4, v5

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "c":Lorg/apache/poi/ss/usermodel/FontUnderline;
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

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lorg/apache/poi/ss/usermodel/FontUnderline;->value:I

    .line 65
    return-void
.end method

.method public static valueOf(B)Lorg/apache/poi/ss/usermodel/FontUnderline;
    .locals 1
    .param p0, "value"    # B

    .prologue
    .line 101
    sparse-switch p0, :sswitch_data_0

    .line 115
    sget-object v0, Lorg/apache/poi/ss/usermodel/FontUnderline;->NONE:Lorg/apache/poi/ss/usermodel/FontUnderline;

    .line 118
    .local v0, "val":Lorg/apache/poi/ss/usermodel/FontUnderline;
    :goto_0
    return-object v0

    .line 103
    .end local v0    # "val":Lorg/apache/poi/ss/usermodel/FontUnderline;
    :sswitch_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/FontUnderline;->DOUBLE:Lorg/apache/poi/ss/usermodel/FontUnderline;

    .line 104
    .restart local v0    # "val":Lorg/apache/poi/ss/usermodel/FontUnderline;
    goto :goto_0

    .line 106
    .end local v0    # "val":Lorg/apache/poi/ss/usermodel/FontUnderline;
    :sswitch_1
    sget-object v0, Lorg/apache/poi/ss/usermodel/FontUnderline;->DOUBLE_ACCOUNTING:Lorg/apache/poi/ss/usermodel/FontUnderline;

    .line 107
    .restart local v0    # "val":Lorg/apache/poi/ss/usermodel/FontUnderline;
    goto :goto_0

    .line 109
    .end local v0    # "val":Lorg/apache/poi/ss/usermodel/FontUnderline;
    :sswitch_2
    sget-object v0, Lorg/apache/poi/ss/usermodel/FontUnderline;->SINGLE_ACCOUNTING:Lorg/apache/poi/ss/usermodel/FontUnderline;

    .line 110
    .restart local v0    # "val":Lorg/apache/poi/ss/usermodel/FontUnderline;
    goto :goto_0

    .line 112
    .end local v0    # "val":Lorg/apache/poi/ss/usermodel/FontUnderline;
    :sswitch_3
    sget-object v0, Lorg/apache/poi/ss/usermodel/FontUnderline;->SINGLE:Lorg/apache/poi/ss/usermodel/FontUnderline;

    .line 113
    .restart local v0    # "val":Lorg/apache/poi/ss/usermodel/FontUnderline;
    goto :goto_0

    .line 101
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_0
        0x21 -> :sswitch_2
        0x22 -> :sswitch_1
    .end sparse-switch
.end method

.method public static valueOf(I)Lorg/apache/poi/ss/usermodel/FontUnderline;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 96
    sget-object v0, Lorg/apache/poi/ss/usermodel/FontUnderline;->_table:[Lorg/apache/poi/ss/usermodel/FontUnderline;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FontUnderline;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lorg/apache/poi/ss/usermodel/FontUnderline;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/FontUnderline;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/FontUnderline;
    .locals 1

    .prologue
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

    .prologue
    const/4 v0, 0x1

    .line 72
    sget-object v1, Lorg/apache/poi/ss/usermodel/FontUnderline$1;->$SwitchMap$org$apache$poi$ss$usermodel$FontUnderline:[I

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/FontUnderline;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 84
    :goto_0
    :pswitch_0
    return v0

    .line 74
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 76
    :pswitch_2
    const/16 v0, 0x22

    goto :goto_0

    .line 78
    :pswitch_3
    const/16 v0, 0x21

    goto :goto_0

    .line 80
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/apache/poi/ss/usermodel/FontUnderline;->value:I

    return v0
.end method
