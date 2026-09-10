.class public final enum Lorg/apache/poi/ss/usermodel/FontScheme;
.super Ljava/lang/Enum;
.source "FontScheme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/poi/ss/usermodel/FontScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/FontScheme;

.field public static final enum MAJOR:Lorg/apache/poi/ss/usermodel/FontScheme;

.field public static final enum MINOR:Lorg/apache/poi/ss/usermodel/FontScheme;

.field public static final enum NONE:Lorg/apache/poi/ss/usermodel/FontScheme;

.field private static _table:[Lorg/apache/poi/ss/usermodel/FontScheme;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 33
    new-instance v4, Lorg/apache/poi/ss/usermodel/FontScheme;

    const-string v5, "NONE"

    invoke-direct {v4, v5, v8, v6}, Lorg/apache/poi/ss/usermodel/FontScheme;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/FontScheme;->NONE:Lorg/apache/poi/ss/usermodel/FontScheme;

    .line 34
    new-instance v4, Lorg/apache/poi/ss/usermodel/FontScheme;

    const-string v5, "MAJOR"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/poi/ss/usermodel/FontScheme;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/FontScheme;->MAJOR:Lorg/apache/poi/ss/usermodel/FontScheme;

    .line 35
    new-instance v4, Lorg/apache/poi/ss/usermodel/FontScheme;

    const-string v5, "MINOR"

    invoke-direct {v4, v5, v7, v9}, Lorg/apache/poi/ss/usermodel/FontScheme;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/FontScheme;->MINOR:Lorg/apache/poi/ss/usermodel/FontScheme;

    .line 30
    new-array v4, v9, [Lorg/apache/poi/ss/usermodel/FontScheme;

    sget-object v5, Lorg/apache/poi/ss/usermodel/FontScheme;->NONE:Lorg/apache/poi/ss/usermodel/FontScheme;

    aput-object v5, v4, v8

    sget-object v5, Lorg/apache/poi/ss/usermodel/FontScheme;->MAJOR:Lorg/apache/poi/ss/usermodel/FontScheme;

    aput-object v5, v4, v6

    sget-object v5, Lorg/apache/poi/ss/usermodel/FontScheme;->MINOR:Lorg/apache/poi/ss/usermodel/FontScheme;

    aput-object v5, v4, v7

    sput-object v4, Lorg/apache/poi/ss/usermodel/FontScheme;->$VALUES:[Lorg/apache/poi/ss/usermodel/FontScheme;

    .line 47
    const/4 v4, 0x4

    new-array v4, v4, [Lorg/apache/poi/ss/usermodel/FontScheme;

    sput-object v4, Lorg/apache/poi/ss/usermodel/FontScheme;->_table:[Lorg/apache/poi/ss/usermodel/FontScheme;

    .line 49
    invoke-static {}, Lorg/apache/poi/ss/usermodel/FontScheme;->values()[Lorg/apache/poi/ss/usermodel/FontScheme;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/ss/usermodel/FontScheme;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 50
    .local v1, "c":Lorg/apache/poi/ss/usermodel/FontScheme;
    sget-object v4, Lorg/apache/poi/ss/usermodel/FontScheme;->_table:[Lorg/apache/poi/ss/usermodel/FontScheme;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FontScheme;->getValue()I

    move-result v5

    aput-object v1, v4, v5

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "c":Lorg/apache/poi/ss/usermodel/FontScheme;
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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lorg/apache/poi/ss/usermodel/FontScheme;->value:I

    .line 41
    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/ss/usermodel/FontScheme;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 55
    sget-object v0, Lorg/apache/poi/ss/usermodel/FontScheme;->_table:[Lorg/apache/poi/ss/usermodel/FontScheme;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FontScheme;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lorg/apache/poi/ss/usermodel/FontScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/FontScheme;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/FontScheme;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/apache/poi/ss/usermodel/FontScheme;->$VALUES:[Lorg/apache/poi/ss/usermodel/FontScheme;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/FontScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/FontScheme;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lorg/apache/poi/ss/usermodel/FontScheme;->value:I

    return v0
.end method
