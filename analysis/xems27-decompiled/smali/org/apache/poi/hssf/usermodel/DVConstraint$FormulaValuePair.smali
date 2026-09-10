.class Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;
.super Ljava/lang/Object;
.source "DVConstraint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/usermodel/DVConstraint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FormulaValuePair"
.end annotation


# instance fields
.field private _formula:Ljava/lang/String;

.field private _value:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/poi/hssf/usermodel/DVConstraint$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/poi/hssf/usermodel/DVConstraint$1;

    .line 473
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;
    .param p1, "x1"    # Ljava/lang/String;

    .line 473
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->_value:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;
    .param p1, "x1"    # Ljava/lang/String;

    .line 473
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->_formula:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public formula()Ljava/lang/String;
    .locals 1

    .line 478
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->_formula:Ljava/lang/String;

    return-object v0
.end method

.method public string()Ljava/lang/String;
    .locals 1

    .line 489
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->_formula:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 490
    return-object v0

    .line 492
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->_value:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 493
    return-object v0

    .line 495
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public value()Ljava/lang/Double;
    .locals 2

    .line 482
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->_value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 483
    const/4 v0, 0x0

    return-object v0

    .line 485
    :cond_0
    new-instance v0, Ljava/lang/Double;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->_value:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
