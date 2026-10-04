.class public final Lcom/isaigu/gymapp/ai/ParamFormula$Out;
.super Ljava/lang/Object;
.source "ParamFormula.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/ParamFormula;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Out"
.end annotation


# instance fields
.field public fatMeasured:Z

.field public fatPct:D

.field public final v:[[I

.field public variant:I

.field public variantBg:Ljava/lang/String;

.field public variantEn:Ljava/lang/String;

.field public final whyBg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final whyEn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x4

    const/4 v1, 0x7

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->v:[[I

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->variantBg:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->variantEn:Ljava/lang/String;

    .line 70
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->fatPct:D

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->whyBg:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->whyEn:Ljava/util/List;

    return-void
.end method


# virtual methods
.method why(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->whyBg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->whyEn:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method
