.class final Lcom/isaigu/gymapp/widget/XemsDossier$Out;
.super Ljava/lang/Object;
.source "XemsDossier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsDossier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Out"
.end annotation


# instance fields
.field final deleted:Z

.field final hash:Ljava/lang/String;

.field final json:Ljava/lang/String;

.field final key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsDossier$Out;->key:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsDossier$Out;->hash:Ljava/lang/String;

    .line 117
    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsDossier$Out;->json:Ljava/lang/String;

    .line 118
    iput-boolean p4, p0, Lcom/isaigu/gymapp/widget/XemsDossier$Out;->deleted:Z

    .line 119
    return-void
.end method
