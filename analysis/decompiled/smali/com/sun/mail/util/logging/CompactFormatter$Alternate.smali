.class Lcom/sun/mail/util/logging/CompactFormatter$Alternate;
.super Ljava/lang/Object;
.source "CompactFormatter.java"

# interfaces
.implements Ljava/util/Formattable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/util/logging/CompactFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Alternate"
.end annotation


# instance fields
.field private final left:Ljava/lang/String;

.field private final right:Ljava/lang/String;

.field final synthetic this$0:Lcom/sun/mail/util/logging/CompactFormatter;


# direct methods
.method constructor <init>(Lcom/sun/mail/util/logging/CompactFormatter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "left"    # Ljava/lang/String;
    .param p3, "right"    # Ljava/lang/String;

    .prologue
    .line 718
    iput-object p1, p0, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;->this$0:Lcom/sun/mail/util/logging/CompactFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;->left:Ljava/lang/String;

    .line 720
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;->right:Ljava/lang/String;

    .line 721
    return-void
.end method

.method private pad(ILjava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "flags"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "length"    # I

    .prologue
    const/16 v5, 0x20

    .line 786
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v2, p3, v3

    .line 787
    .local v2, "padding":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 788
    .local v0, "b":Ljava/lang/StringBuilder;
    and-int/lit8 v3, p1, 0x1

    .line 789
    const/4 v4, 0x1

    .line 788
    if-ne v3, v4, :cond_2

    .line 790
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 793
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 791
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 790
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 795
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 797
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 796
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public formatTo(Ljava/util/Formatter;III)V
    .locals 8
    .param p1, "formatter"    # Ljava/util/Formatter;
    .param p2, "flags"    # I
    .param p3, "width"    # I
    .param p4, "precision"    # I

    .prologue
    const/4 v7, 0x0

    .line 726
    iget-object v3, p0, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;->left:Ljava/lang/String;

    .line 727
    .local v3, "l":Ljava/lang/String;
    iget-object v4, p0, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;->right:Ljava/lang/String;

    .line 728
    .local v4, "r":Ljava/lang/String;
    and-int/lit8 v5, p2, 0x2

    .line 729
    const/4 v6, 0x2

    .line 728
    if-ne v5, v6, :cond_0

    .line 730
    invoke-virtual {p1}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 731
    invoke-virtual {p1}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 734
    :cond_0
    and-int/lit8 v5, p2, 0x4

    .line 735
    const/4 v6, 0x4

    .line 734
    if-ne v5, v6, :cond_1

    .line 736
    iget-object v5, p0, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;->this$0:Lcom/sun/mail/util/logging/CompactFormatter;

    invoke-virtual {v5, v3}, Lcom/sun/mail/util/logging/CompactFormatter;->toAlternate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 737
    iget-object v5, p0, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;->this$0:Lcom/sun/mail/util/logging/CompactFormatter;

    invoke-virtual {v5, v4}, Lcom/sun/mail/util/logging/CompactFormatter;->toAlternate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 740
    :cond_1
    if-gtz p4, :cond_2

    .line 741
    const p4, 0x7fffffff

    .line 744
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 745
    .local v1, "fence":I
    shr-int/lit8 v5, p4, 0x1

    if-le v1, v5, :cond_3

    .line 746
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, v1, v5

    shr-int/lit8 v6, v1, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 749
    :cond_3
    if-lez v1, :cond_5

    .line 750
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v1, v5, :cond_4

    .line 751
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 752
    add-int/lit8 v1, v1, -0x1

    .line 754
    :cond_4
    invoke-virtual {v3, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 756
    :cond_5
    sub-int v5, p4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 758
    if-lez p3, :cond_7

    .line 759
    shr-int/lit8 v2, p3, 0x1

    .line 760
    .local v2, "half":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v2, :cond_6

    .line 761
    invoke-direct {p0, p2, v3, v2}, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;->pad(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 764
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v2, :cond_7

    .line 765
    invoke-direct {p0, p2, v4, v2}, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;->pad(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 769
    .end local v2    # "half":I
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 770
    .local v0, "empty":[Ljava/lang/Object;
    invoke-virtual {p1, v3, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 771
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8

    .line 772
    const-string/jumbo v5, "|"

    invoke-virtual {p1, v5, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 774
    :cond_8
    invoke-virtual {p1, v4, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 775
    return-void
.end method
