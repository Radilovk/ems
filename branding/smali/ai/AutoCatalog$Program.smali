.class public final Lcom/isaigu/gymapp/ai/AutoCatalog$Program;
.super Ljava/lang/Object;
.source "AutoCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Program"
.end annotation


# instance fields
.field public asksBack:Z

.field public asksFace:Z

.field public asksPostpartum:Z

.field public cr10Hi:I

.field public cr10Lo:I

.field public final descBg:Ljava/lang/String;

.field public final descEn:Ljava/lang/String;

.field public doublePulse:Z

.field public envMax:D

.field public femaleOnly:Z

.field public final id:Ljava/lang/String;

.field public impulse:Ljava/lang/String;

.field public final kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

.field public level:I

.field public maleOnly:Z

.field public final nameBg:Ljava/lang/String;

.field public final nameEn:Ljava/lang/String;

.field public variantsBg:[Ljava/lang/String;

.field public variantsEn:[Ljava/lang/String;

.field public xCap:D

.field public final zones:[I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V
    .registers 10

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->envMax:D

    .line 99
    const/4 v0, 0x2

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    .line 113
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->nameBg:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->nameEn:Ljava/lang/String;

    .line 116
    iput-object p4, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->descBg:Ljava/lang/String;

    .line 117
    iput-object p5, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->descEn:Ljava/lang/String;

    .line 118
    iput-object p6, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 119
    iput-object p7, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->zones:[I

    .line 120
    return-void
.end method


# virtual methods
.method public desc()Ljava/lang/String;
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->descBg:Ljava/lang/String;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->descEn:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public name()Ljava/lang/String;
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->nameBg:Ljava/lang/String;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->nameEn:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
