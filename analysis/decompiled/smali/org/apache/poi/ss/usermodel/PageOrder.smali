.class public final enum Lorg/apache/poi/ss/usermodel/PageOrder;
.super Ljava/lang/Enum;
.source "PageOrder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/poi/ss/usermodel/PageOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/PageOrder;

.field public static final enum DOWN_THEN_OVER:Lorg/apache/poi/ss/usermodel/PageOrder;

.field public static final enum OVER_THEN_DOWN:Lorg/apache/poi/ss/usermodel/PageOrder;

.field private static _table:[Lorg/apache/poi/ss/usermodel/PageOrder;


# instance fields
.field private order:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 30
    new-instance v4, Lorg/apache/poi/ss/usermodel/PageOrder;

    const-string v5, "DOWN_THEN_OVER"

    invoke-direct {v4, v5, v7, v6}, Lorg/apache/poi/ss/usermodel/PageOrder;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/PageOrder;->DOWN_THEN_OVER:Lorg/apache/poi/ss/usermodel/PageOrder;

    .line 34
    new-instance v4, Lorg/apache/poi/ss/usermodel/PageOrder;

    const-string v5, "OVER_THEN_DOWN"

    invoke-direct {v4, v5, v6, v8}, Lorg/apache/poi/ss/usermodel/PageOrder;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/PageOrder;->OVER_THEN_DOWN:Lorg/apache/poi/ss/usermodel/PageOrder;

    .line 25
    new-array v4, v8, [Lorg/apache/poi/ss/usermodel/PageOrder;

    sget-object v5, Lorg/apache/poi/ss/usermodel/PageOrder;->DOWN_THEN_OVER:Lorg/apache/poi/ss/usermodel/PageOrder;

    aput-object v5, v4, v7

    sget-object v5, Lorg/apache/poi/ss/usermodel/PageOrder;->OVER_THEN_DOWN:Lorg/apache/poi/ss/usermodel/PageOrder;

    aput-object v5, v4, v6

    sput-object v4, Lorg/apache/poi/ss/usermodel/PageOrder;->$VALUES:[Lorg/apache/poi/ss/usermodel/PageOrder;

    .line 49
    const/4 v4, 0x3

    new-array v4, v4, [Lorg/apache/poi/ss/usermodel/PageOrder;

    sput-object v4, Lorg/apache/poi/ss/usermodel/PageOrder;->_table:[Lorg/apache/poi/ss/usermodel/PageOrder;

    .line 51
    invoke-static {}, Lorg/apache/poi/ss/usermodel/PageOrder;->values()[Lorg/apache/poi/ss/usermodel/PageOrder;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/ss/usermodel/PageOrder;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 52
    .local v1, "c":Lorg/apache/poi/ss/usermodel/PageOrder;
    sget-object v4, Lorg/apache/poi/ss/usermodel/PageOrder;->_table:[Lorg/apache/poi/ss/usermodel/PageOrder;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/PageOrder;->getValue()I

    move-result v5

    aput-object v1, v4, v5

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "c":Lorg/apache/poi/ss/usermodel/PageOrder;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "order"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lorg/apache/poi/ss/usermodel/PageOrder;->order:I

    .line 42
    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/ss/usermodel/PageOrder;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 57
    sget-object v0, Lorg/apache/poi/ss/usermodel/PageOrder;->_table:[Lorg/apache/poi/ss/usermodel/PageOrder;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/PageOrder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lorg/apache/poi/ss/usermodel/PageOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/PageOrder;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/PageOrder;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/apache/poi/ss/usermodel/PageOrder;->$VALUES:[Lorg/apache/poi/ss/usermodel/PageOrder;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/PageOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/PageOrder;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lorg/apache/poi/ss/usermodel/PageOrder;->order:I

    return v0
.end method
