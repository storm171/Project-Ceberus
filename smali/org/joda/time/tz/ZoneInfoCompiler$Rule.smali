.class Lorg/joda/time/tz/ZoneInfoCompiler$Rule;
.super Ljava/lang/Object;
.source "ZoneInfoCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/ZoneInfoCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rule"
.end annotation


# instance fields
.field public final iDateTimeOfYear:Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

.field public final iFromYear:I

.field public final iLetterS:Ljava/lang/String;

.field public final iName:Ljava/lang/String;

.field public final iSaveMillis:I

.field public final iToYear:I

.field public final iType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/StringTokenizer;)V
    .locals 2

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    .line 700
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iName:Ljava/lang/String;

    .line 701
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/joda/time/tz/ZoneInfoCompiler;->parseYear(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iFromYear:I

    .line 702
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iFromYear:I

    invoke-static {v0, v1}, Lorg/joda/time/tz/ZoneInfoCompiler;->parseYear(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iToYear:I

    .line 703
    iget v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iToYear:I

    iget v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iFromYear:I

    if-lt v0, v1, :cond_0

    .line 706
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/tz/ZoneInfoCompiler;->parseOptional(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iType:Ljava/lang/String;

    .line 707
    new-instance v0, Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

    invoke-direct {v0, p1}, Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;-><init>(Ljava/util/StringTokenizer;)V

    iput-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iDateTimeOfYear:Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

    .line 708
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/tz/ZoneInfoCompiler;->parseTime(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iSaveMillis:I

    .line 709
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/joda/time/tz/ZoneInfoCompiler;->parseOptional(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iLetterS:Ljava/lang/String;

    .line 710
    return-void

    .line 704
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 698
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to create a Rule from an incomplete tokenizer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private formatName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 722
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 723
    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 724
    iget v2, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iSaveMillis:I

    if-nez v2, :cond_0

    .line 726
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 728
    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 731
    :cond_1
    const-string v0, "%s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 732
    if-gez v0, :cond_2

    .line 733
    return-object p1

    .line 735
    :cond_2
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 736
    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 738
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iLetterS:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 739
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 741
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iLetterS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 743
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addRecurring(Lorg/joda/time/tz/DateTimeZoneBuilder;Ljava/lang/String;)V
    .locals 6

    .line 716
    invoke-direct {p0, p2}, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->formatName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 717
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iDateTimeOfYear:Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

    iget v3, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iSaveMillis:I

    iget v4, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iFromYear:I

    iget v5, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iToYear:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;->addRecurring(Lorg/joda/time/tz/DateTimeZoneBuilder;Ljava/lang/String;III)V

    .line 719
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Rule]\nName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "FromYear: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iFromYear:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ToYear: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iToYear:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iDateTimeOfYear:Lorg/joda/time/tz/ZoneInfoCompiler$DateTimeOfYear;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "SaveMillis: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iSaveMillis:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "LetterS: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/joda/time/tz/ZoneInfoCompiler$Rule;->iLetterS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
