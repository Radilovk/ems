.class public final enum Lorg/apache/poi/ss/usermodel/PrintOrientation;
.super Ljava/lang/Enum;
.source "PrintOrientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/poi/ss/usermodel/PrintOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/PrintOrientation;

.field public static final enum DEFAULT:Lorg/apache/poi/ss/usermodel/PrintOrientation;

.field public static final enum LANDSCAPE:Lorg/apache/poi/ss/usermodel/PrintOrientation;

.field public static final enum PORTRAIT:Lorg/apache/poi/ss/usermodel/PrintOrientation;

.field private static _table:[Lorg/apache/poi/ss/usermodel/PrintOrientation;


# instance fields
.field private orientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 30
    new-instance v4, Lorg/apache/poi/ss/usermodel/PrintOrientation;

    const-string v5, "DEFAULT"

    invoke-direct {v4, v5, v8, v6}, Lorg/apache/poi/ss/usermodel/PrintOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/PrintOrientation;->DEFAULT:Lorg/apache/poi/ss/usermodel/PrintOrientation;

    .line 34
    new-instance v4, Lorg/apache/poi/ss/usermodel/PrintOrientation;

    const-string v5, "PORTRAIT"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/poi/ss/usermodel/PrintOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/PrintOrientation;->PORTRAIT:Lorg/apache/poi/ss/usermodel/PrintOrientation;

    .line 38
    new-instance v4, Lorg/apache/poi/ss/usermodel/PrintOrientation;

    const-string v5, "LANDSCAPE"

    invoke-direct {v4, v5, v7, v9}, Lorg/apache/poi/ss/usermodel/PrintOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/PrintOrientation;->LANDSCAPE:Lorg/apache/poi/ss/usermodel/PrintOrientation;

    .line 25
    new-array v4, v9, [Lorg/apache/poi/ss/usermodel/PrintOrientation;

    sget-object v5, Lorg/apache/poi/ss/usermodel/PrintOrientation;->DEFAULT:Lorg/apache/poi/ss/usermodel/PrintOrientation;

    aput-object v5, v4, v8

    sget-object v5, Lorg/apache/poi/ss/usermodel/PrintOrientation;->PORTRAIT:Lorg/apache/poi/ss/usermodel/PrintOrientation;

    aput-object v5, v4, v6

    sget-object v5, Lorg/apache/poi/ss/usermodel/PrintOrientation;->LANDSCAPE:Lorg/apache/poi/ss/usermodel/PrintOrientation;

    aput-object v5, v4, v7

    sput-object v4, Lorg/apache/poi/ss/usermodel/PrintOrientation;->$VALUES:[Lorg/apache/poi/ss/usermodel/PrintOrientation;

    .line 53
    const/4 v4, 0x4

    new-array v4, v4, [Lorg/apache/poi/ss/usermodel/PrintOrientation;

    sput-object v4, Lorg/apache/poi/ss/usermodel/PrintOrientation;->_table:[Lorg/apache/poi/ss/usermodel/PrintOrientation;

    .line 55
    invoke-static {}, Lorg/apache/poi/ss/usermodel/PrintOrientation;->values()[Lorg/apache/poi/ss/usermodel/PrintOrientation;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/ss/usermodel/PrintOrientation;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 56
    .local v1, "c":Lorg/apache/poi/ss/usermodel/PrintOrientation;
    sget-object v4, Lorg/apache/poi/ss/usermodel/PrintOrientation;->_table:[Lorg/apache/poi/ss/usermodel/PrintOrientation;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/PrintOrientation;->getValue()I

    move-result v5

    aput-object v1, v4, v5

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "c":Lorg/apache/poi/ss/usermodel/PrintOrientation;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lorg/apache/poi/ss/usermodel/PrintOrientation;->orientation:I

    .line 45
    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/ss/usermodel/PrintOrientation;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 61
    sget-object v0, Lorg/apache/poi/ss/usermodel/PrintOrientation;->_table:[Lorg/apache/poi/ss/usermodel/PrintOrientation;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/PrintOrientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lorg/apache/poi/ss/usermodel/PrintOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/PrintOrientation;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/PrintOrientation;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/apache/poi/ss/usermodel/PrintOrientation;->$VALUES:[Lorg/apache/poi/ss/usermodel/PrintOrientation;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/PrintOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/PrintOrientation;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lorg/apache/poi/ss/usermodel/PrintOrientation;->orientation:I

    return v0
.end method
