.class Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/InternalParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MatchingParser"
.end annotation


# instance fields
.field private final iParsedLengthEstimate:I

.field private final iParsers:[Lorg/joda/time/format/InternalParser;


# direct methods
.method constructor <init>([Lorg/joda/time/format/InternalParser;)V
    .locals 3

    .line 2543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2544
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;->iParsers:[Lorg/joda/time/format/InternalParser;

    .line 2545
    nop

    .line 2546
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 2547
    aget-object v2, p1, v0

    .line 2548
    if-eqz v2, :cond_0

    .line 2549
    invoke-interface {v2}, Lorg/joda/time/format/InternalParser;->estimateParsedLength()I

    move-result v2

    .line 2550
    if-le v2, v1, :cond_0

    .line 2551
    move v1, v2

    .line 2554
    :cond_0
    goto :goto_0

    .line 2555
    :cond_1
    iput v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;->iParsedLengthEstimate:I

    .line 2556
    return-void
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .line 2559
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;->iParsedLengthEstimate:I

    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .locals 9

    .line 2563
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;->iParsers:[Lorg/joda/time/format/InternalParser;

    .line 2564
    array-length v1, v0

    .line 2566
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->saveState()Ljava/lang/Object;

    move-result-object v2

    .line 2567
    nop

    .line 2569
    nop

    .line 2570
    nop

    .line 2572
    nop

    .line 2574
    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p3

    move v6, v5

    move-object v7, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_6

    .line 2575
    aget-object v8, v0, v4

    .line 2576
    if-nez v8, :cond_1

    .line 2578
    if-gt v5, p3, :cond_0

    .line 2579
    return p3

    .line 2581
    :cond_0
    nop

    .line 2582
    const/4 v3, 0x1

    goto :goto_3

    .line 2584
    :cond_1
    invoke-interface {v8, p1, p2, p3}, Lorg/joda/time/format/InternalParser;->parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I

    move-result v8

    .line 2585
    if-lt v8, p3, :cond_4

    .line 2586
    if-le v8, v5, :cond_5

    .line 2587
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v8, v5, :cond_3

    add-int/lit8 v5, v4, 0x1

    if-ge v5, v1, :cond_3

    aget-object v5, v0, v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 2594
    :cond_2
    nop

    .line 2595
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->saveState()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    move v5, v8

    goto :goto_2

    .line 2592
    :cond_3
    :goto_1
    return v8

    .line 2598
    :cond_4
    if-gez v8, :cond_5

    .line 2599
    xor-int/lit8 v8, v8, -0x1

    .line 2600
    if-le v8, v6, :cond_5

    .line 2601
    move v6, v8

    .line 2605
    :cond_5
    :goto_2
    invoke-virtual {p1, v2}, Lorg/joda/time/format/DateTimeParserBucket;->restoreState(Ljava/lang/Object;)Z

    .line 2574
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2608
    :cond_6
    :goto_3
    if-gt v5, p3, :cond_8

    if-ne v5, p3, :cond_7

    if-eqz v3, :cond_7

    goto :goto_4

    .line 2616
    :cond_7
    xor-int/lit8 p1, v6, -0x1

    return p1

    .line 2610
    :cond_8
    :goto_4
    if-eqz v7, :cond_9

    .line 2611
    invoke-virtual {p1, v7}, Lorg/joda/time/format/DateTimeParserBucket;->restoreState(Ljava/lang/Object;)Z

    .line 2613
    :cond_9
    return v5
.end method
