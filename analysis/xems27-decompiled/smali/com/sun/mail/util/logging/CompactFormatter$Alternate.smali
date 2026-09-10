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
    .locals 0
    .param p2, "left"    # Ljava/lang/String;
    .param p3, "right"    # Ljava/lang/String;

    .line 718
    iput-object p1, p0, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;->this$0:Lcom/sun/mail/util/logging/CompactFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;->left:Ljava/lang/String;

    .line 720
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;->right:Ljava/lang/String;

    .line 721
    return-void
.end method

.method private pad(ILjava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "flags"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "length"    # I

    .line 786
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p3, v0

    .line 787
    .local v0, "padding":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 788
    .local v1, "b":Ljava/lang/StringBuilder;
    and-int/lit8 v2, p1, 0x1

    .line 789
    nop

    .line 788
    const/16 v3, 0x20

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 790
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 793
    .end local v2    # "i":I
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    goto :goto_2

    .line 791
    .restart local v2    # "i":I
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 790
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 795
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-lt v2, v0, :cond_2

    .line 800
    .end local v2    # "i":I
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 797
    .restart local v2    # "i":I
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 796
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public formatTo(Ljava/util/Formatter;III)V
    .locals 6
    .param p1, "formatter"    # Ljava/util/Formatter;
    .param p2, "flags"    # I
    .param p3, "width"    # I
    .param p4, "precision"    # I

    .line 726
    iget-object v0, p0, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;->left:Ljava/lang/String;

    .line 727
    .local v0, "l":Ljava/lang/String;
    iget-object v1, p0, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;->right:Ljava/lang/String;

    .line 728
    .local v1, "r":Ljava/lang/String;
    and-int/lit8 v2, p2, 0x2

    .line 729
    nop

    .line 728
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 730
    invoke-virtual {p1}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 731
    invoke-virtual {p1}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 734
    :cond_0
    and-int/lit8 v2, p2, 0x4

    .line 735
    nop

    .line 734
    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 736
    iget-object v2, p0, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;->this$0:Lcom/sun/mail/util/logging/CompactFormatter;

    invoke-virtual {v2, v0}, Lcom/sun/mail/util/logging/CompactFormatter;->toAlternate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 737
    iget-object v2, p0, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;->this$0:Lcom/sun/mail/util/logging/CompactFormatter;

    invoke-virtual {v2, v1}, Lcom/sun/mail/util/logging/CompactFormatter;->toAlternate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 740
    :cond_1
    if-gtz p4, :cond_2

    .line 741
    const p4, 0x7fffffff

    .line 744
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 745
    .local v2, "fence":I
    shr-int/lit8 v3, p4, 0x1

    if-le v2, v3, :cond_3

    .line 746
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v2, v3

    shr-int/lit8 v4, v2, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 749
    :cond_3
    const/4 v3, 0x0

    if-lez v2, :cond_5

    .line 750
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v2, v4, :cond_4

    .line 751
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 752
    add-int/lit8 v2, v2, -0x1

    .line 754
    :cond_4
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 756
    :cond_5
    sub-int v4, p4, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 758
    if-lez p3, :cond_7

    .line 759
    shr-int/lit8 v3, p3, 0x1

    .line 760
    .local v3, "half":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v3, :cond_6

    .line 761
    invoke-direct {p0, p2, v0, v3}, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;->pad(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 764
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v3, :cond_7

    .line 765
    invoke-direct {p0, p2, v1, v3}, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;->pad(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 769
    .end local v3    # "half":I
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 770
    .local v3, "empty":[Ljava/lang/Object;
    invoke-virtual {p1, v0, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 771
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8

    .line 772
    const-string v4, "|"

    invoke-virtual {p1, v4, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 774
    :cond_8
    invoke-virtual {p1, v1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 775
    return-void
.end method
