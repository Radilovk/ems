.class Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;
.super Ljava/lang/Object;
.source "CellNumberFormatter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/format/CellNumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringMod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;",
        ">;"
    }
.end annotation


# static fields
.field public static final AFTER:I = 0x2

.field public static final BEFORE:I = 0x1

.field public static final REPLACE:I = 0x3


# instance fields
.field end:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field endInclusive:Z

.field final op:I

.field final special:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field startInclusive:Z

.field toAdd:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;I)V
    .locals 0
    .param p1, "special"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p2, "toAdd"    # Ljava/lang/CharSequence;
    .param p3, "op"    # I

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->special:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 137
    iput-object p2, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->toAdd:Ljava/lang/CharSequence;

    .line 138
    iput p3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->op:I

    .line 139
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;ILorg/apache/poi/ss/format/CellNumberFormatter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p2, "x1"    # Ljava/lang/CharSequence;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lorg/apache/poi/ss/format/CellNumberFormatter$1;

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;-><init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)V
    .locals 1
    .param p1, "start"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p2, "startInclusive"    # Z
    .param p3, "end"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p4, "endInclusive"    # Z

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->special:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 150
    iput-boolean p2, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->startInclusive:Z

    .line 151
    iput-object p3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->end:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 152
    iput-boolean p4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->endInclusive:Z

    .line 153
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->op:I

    .line 154
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->toAdd:Ljava/lang/CharSequence;

    .line 155
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)V
    .locals 2
    .param p1, "start"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p2, "startInclusive"    # Z
    .param p3, "end"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p4, "endInclusive"    # Z
    .param p5, "toAdd"    # C

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;-><init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->toAdd:Ljava/lang/CharSequence;

    .line 145
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 123
    check-cast p1, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->compareTo(Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;)I
    .locals 3
    .param p1, "that"    # Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    .prologue
    .line 158
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->special:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget v1, v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    iget-object v2, p1, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->special:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget v2, v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    sub-int v0, v1, v2

    .line 159
    .local v0, "diff":I
    if-eqz v0, :cond_0

    .line 162
    .end local v0    # "diff":I
    :goto_0
    return v0

    .restart local v0    # "diff":I
    :cond_0
    iget v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->op:I

    iget v2, p1, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->op:I

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 168
    :try_start_0
    check-cast p1, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->compareTo(Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 171
    :cond_0
    :goto_0
    return v1

    .line 169
    :catch_0
    move-exception v0

    .line 171
    .local v0, "ignored":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->special:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->op:I

    add-int/2addr v0, v1

    return v0
.end method
