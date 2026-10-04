.class final Lcom/isaigu/gymapp/ai/ParamFormula$Variant;
.super Ljava/lang/Object;
.source "ParamFormula.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/ParamFormula;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Variant"
.end annotation


# instance fields
.field final bg:Ljava/lang/String;

.field final en:Ljava/lang/String;

.field final v:[[I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[[I)V
    .registers 4

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;->bg:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;->en:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/isaigu/gymapp/ai/ParamFormula$Variant;->v:[[I

    .line 60
    return-void
.end method
