.class public final Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;
.super Ljava/lang/Object;
.source "ProgramGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/ProgramGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final courseBg:Ljava/lang/String;

.field public final courseEn:Ljava/lang/String;

.field public final howBg:[Ljava/lang/String;

.field public final howEn:[Ljava/lang/String;

.field public final oftenBg:Ljava/lang/String;

.field public final oftenEn:Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;->howBg:[Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;->howEn:[Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;->oftenBg:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;->oftenEn:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;->courseBg:Ljava/lang/String;

    .line 27
    iput-object p6, p0, Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;->courseEn:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public course()Ljava/lang/String;
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;->courseBg:Ljava/lang/String;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;->courseEn:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public how(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 31
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;->howBg:[Ljava/lang/String;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;->howEn:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public often()Ljava/lang/String;
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;->oftenBg:Ljava/lang/String;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;->oftenEn:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
