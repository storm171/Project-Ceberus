.class public Lorg/joda/time/format/PeriodFormat;
.super Ljava/lang/Object;
.source "PeriodFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/format/PeriodFormat$DynamicWordBased;
    }
.end annotation


# static fields
.field private static final BUNDLE_NAME:Ljava/lang/String; = "org.joda.time.format.messages"

.field private static final FORMATTERS:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Lorg/joda/time/format/PeriodFormatter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/joda/time/format/PeriodFormat;->FORMATTERS:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private static buildNonRegExFormatter(Ljava/util/ResourceBundle;Ljava/util/Locale;)Lorg/joda/time/format/PeriodFormatter;
    .locals 6

    .line 312
    invoke-static {p0}, Lorg/joda/time/format/PeriodFormat;->retrieveVariants(Ljava/util/ResourceBundle;)[Ljava/lang/String;

    move-result-object v0

    .line 313
    new-instance v1, Lorg/joda/time/format/PeriodFormatterBuilder;

    invoke-direct {v1}, Lorg/joda/time/format/PeriodFormatterBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendYears()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v1

    const-string v2, "PeriodFormat.year"

    invoke-virtual {p0, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PeriodFormat.years"

    invoke-virtual {p0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v1

    const-string v2, "PeriodFormat.commaspace"

    invoke-virtual {p0, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PeriodFormat.spaceandspace"

    invoke-virtual {p0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendMonths()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v1

    const-string v3, "PeriodFormat.month"

    invoke-virtual {p0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "PeriodFormat.months"

    invoke-virtual {p0, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v1

    invoke-virtual {p0, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendWeeks()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v1

    const-string v3, "PeriodFormat.week"

    invoke-virtual {p0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "PeriodFormat.weeks"

    invoke-virtual {p0, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v1

    invoke-virtual {p0, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendDays()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v1

    const-string v3, "PeriodFormat.day"

    invoke-virtual {p0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "PeriodFormat.days"

    invoke-virtual {p0, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v1

    invoke-virtual {p0, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendHours()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v1

    const-string v3, "PeriodFormat.hour"

    invoke-virtual {p0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "PeriodFormat.hours"

    invoke-virtual {p0, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v1

    invoke-virtual {p0, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendMinutes()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v1

    const-string v3, "PeriodFormat.minute"

    invoke-virtual {p0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "PeriodFormat.minutes"

    invoke-virtual {p0, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v1

    invoke-virtual {p0, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeconds()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v1

    const-string v3, "PeriodFormat.second"

    invoke-virtual {p0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "PeriodFormat.seconds"

    invoke-virtual {p0, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v1

    invoke-virtual {p0, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendMillis()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const-string v1, "PeriodFormat.millisecond"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PeriodFormat.milliseconds"

    invoke-virtual {p0, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatterBuilder;->toFormatter()Lorg/joda/time/format/PeriodFormatter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/joda/time/format/PeriodFormatter;->withLocale(Ljava/util/Locale;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object p0

    return-object p0
.end method

.method private static buildRegExFormatter(Ljava/util/ResourceBundle;Ljava/util/Locale;)Lorg/joda/time/format/PeriodFormatter;
    .locals 7

    .line 226
    invoke-static {p0}, Lorg/joda/time/format/PeriodFormat;->retrieveVariants(Ljava/util/ResourceBundle;)[Ljava/lang/String;

    move-result-object v0

    .line 227
    const-string v1, "PeriodFormat.regex.separator"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    new-instance v2, Lorg/joda/time/format/PeriodFormatterBuilder;

    invoke-direct {v2}, Lorg/joda/time/format/PeriodFormatterBuilder;-><init>()V

    .line 230
    invoke-virtual {v2}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendYears()Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 231
    const-string v3, "PeriodFormat.years.regex"

    invoke-static {p0, v3}, Lorg/joda/time/format/PeriodFormat;->containsKey(Ljava/util/ResourceBundle;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    invoke-virtual {p0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "PeriodFormat.years.list"

    invoke-virtual {p0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix([Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    goto :goto_0

    .line 236
    :cond_0
    const-string v3, "PeriodFormat.year"

    invoke-virtual {p0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PeriodFormat.years"

    invoke-virtual {p0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 239
    :goto_0
    const-string v3, "PeriodFormat.commaspace"

    invoke-virtual {p0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PeriodFormat.spaceandspace"

    invoke-virtual {p0, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 240
    invoke-virtual {v2}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendMonths()Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 241
    const-string v4, "PeriodFormat.months.regex"

    invoke-static {p0, v4}, Lorg/joda/time/format/PeriodFormat;->containsKey(Ljava/util/ResourceBundle;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 242
    invoke-virtual {p0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v6, "PeriodFormat.months.list"

    invoke-virtual {p0, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix([Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    goto :goto_1

    .line 246
    :cond_1
    const-string v4, "PeriodFormat.month"

    invoke-virtual {p0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "PeriodFormat.months"

    invoke-virtual {p0, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 249
    :goto_1
    invoke-virtual {p0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 250
    invoke-virtual {v2}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendWeeks()Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 251
    const-string v4, "PeriodFormat.weeks.regex"

    invoke-static {p0, v4}, Lorg/joda/time/format/PeriodFormat;->containsKey(Ljava/util/ResourceBundle;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 252
    invoke-virtual {p0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v6, "PeriodFormat.weeks.list"

    invoke-virtual {p0, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix([Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    goto :goto_2

    .line 256
    :cond_2
    const-string v4, "PeriodFormat.week"

    invoke-virtual {p0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "PeriodFormat.weeks"

    invoke-virtual {p0, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 259
    :goto_2
    invoke-virtual {p0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 260
    invoke-virtual {v2}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendDays()Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 261
    const-string v4, "PeriodFormat.days.regex"

    invoke-static {p0, v4}, Lorg/joda/time/format/PeriodFormat;->containsKey(Ljava/util/ResourceBundle;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 262
    invoke-virtual {p0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v6, "PeriodFormat.days.list"

    invoke-virtual {p0, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix([Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    goto :goto_3

    .line 266
    :cond_3
    const-string v4, "PeriodFormat.day"

    invoke-virtual {p0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "PeriodFormat.days"

    invoke-virtual {p0, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 269
    :goto_3
    invoke-virtual {p0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 270
    invoke-virtual {v2}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendHours()Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 271
    const-string v4, "PeriodFormat.hours.regex"

    invoke-static {p0, v4}, Lorg/joda/time/format/PeriodFormat;->containsKey(Ljava/util/ResourceBundle;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 272
    invoke-virtual {p0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v6, "PeriodFormat.hours.list"

    invoke-virtual {p0, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix([Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    goto :goto_4

    .line 276
    :cond_4
    const-string v4, "PeriodFormat.hour"

    invoke-virtual {p0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "PeriodFormat.hours"

    invoke-virtual {p0, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 279
    :goto_4
    invoke-virtual {p0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 280
    invoke-virtual {v2}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendMinutes()Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 281
    const-string v4, "PeriodFormat.minutes.regex"

    invoke-static {p0, v4}, Lorg/joda/time/format/PeriodFormat;->containsKey(Ljava/util/ResourceBundle;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 282
    invoke-virtual {p0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v6, "PeriodFormat.minutes.list"

    invoke-virtual {p0, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix([Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    goto :goto_5

    .line 286
    :cond_5
    const-string v4, "PeriodFormat.minute"

    invoke-virtual {p0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "PeriodFormat.minutes"

    invoke-virtual {p0, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 289
    :goto_5
    invoke-virtual {p0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 290
    invoke-virtual {v2}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeconds()Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 291
    const-string v4, "PeriodFormat.seconds.regex"

    invoke-static {p0, v4}, Lorg/joda/time/format/PeriodFormat;->containsKey(Ljava/util/ResourceBundle;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 292
    invoke-virtual {p0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v6, "PeriodFormat.seconds.list"

    invoke-virtual {p0, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix([Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    goto :goto_6

    .line 296
    :cond_6
    const-string v4, "PeriodFormat.second"

    invoke-virtual {p0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "PeriodFormat.seconds"

    invoke-virtual {p0, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 299
    :goto_6
    invoke-virtual {p0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 300
    invoke-virtual {v2}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendMillis()Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 301
    const-string v0, "PeriodFormat.milliseconds.regex"

    invoke-static {p0, v0}, Lorg/joda/time/format/PeriodFormat;->containsKey(Ljava/util/ResourceBundle;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 302
    invoke-virtual {p0, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v3, "PeriodFormat.milliseconds.list"

    invoke-virtual {p0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix([Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    goto :goto_7

    .line 306
    :cond_7
    const-string v0, "PeriodFormat.millisecond"

    invoke-virtual {p0, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PeriodFormat.milliseconds"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 308
    :goto_7
    invoke-virtual {v2}, Lorg/joda/time/format/PeriodFormatterBuilder;->toFormatter()Lorg/joda/time/format/PeriodFormatter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/joda/time/format/PeriodFormatter;->withLocale(Ljava/util/Locale;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object p0

    return-object p0
.end method

.method private static buildWordBased(Ljava/util/Locale;)Lorg/joda/time/format/PeriodFormatter;
    .locals 2

    .line 217
    const-string v0, "org.joda.time.format.messages"

    invoke-static {v0, p0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 218
    const-string v1, "PeriodFormat.regex.separator"

    invoke-static {v0, v1}, Lorg/joda/time/format/PeriodFormat;->containsKey(Ljava/util/ResourceBundle;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-static {v0, p0}, Lorg/joda/time/format/PeriodFormat;->buildRegExFormatter(Ljava/util/ResourceBundle;Ljava/util/Locale;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object p0

    return-object p0

    .line 221
    :cond_0
    invoke-static {v0, p0}, Lorg/joda/time/format/PeriodFormat;->buildNonRegExFormatter(Ljava/util/ResourceBundle;Ljava/util/Locale;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object p0

    return-object p0
.end method

.method private static containsKey(Ljava/util/ResourceBundle;Ljava/lang/String;)Z
    .locals 1

    .line 347
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    const/4 p0, 0x1

    return p0

    .line 352
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getDefault()Lorg/joda/time/format/PeriodFormatter;
    .locals 1

    .line 73
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Lorg/joda/time/format/PeriodFormat;->wordBased(Ljava/util/Locale;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static retrieveVariants(Ljava/util/ResourceBundle;)[Ljava/lang/String;
    .locals 3

    .line 341
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "PeriodFormat.space"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PeriodFormat.comma"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "PeriodFormat.commandand"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "PeriodFormat.commaspaceand"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    return-object v0
.end method

.method public static wordBased()Lorg/joda/time/format/PeriodFormatter;
    .locals 1

    .line 85
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/format/PeriodFormat;->wordBased(Ljava/util/Locale;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static wordBased(Ljava/util/Locale;)Lorg/joda/time/format/PeriodFormatter;
    .locals 3

    .line 203
    sget-object v0, Lorg/joda/time/format/PeriodFormat;->FORMATTERS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/format/PeriodFormatter;

    .line 204
    if-nez v0, :cond_1

    .line 205
    new-instance v0, Lorg/joda/time/format/PeriodFormat$DynamicWordBased;

    invoke-static {p0}, Lorg/joda/time/format/PeriodFormat;->buildWordBased(Ljava/util/Locale;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/joda/time/format/PeriodFormat$DynamicWordBased;-><init>(Lorg/joda/time/format/PeriodFormatter;)V

    .line 206
    new-instance v1, Lorg/joda/time/format/PeriodFormatter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v0, p0, v2}, Lorg/joda/time/format/PeriodFormatter;-><init>(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;Ljava/util/Locale;Lorg/joda/time/PeriodType;)V

    .line 207
    sget-object v0, Lorg/joda/time/format/PeriodFormat;->FORMATTERS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lorg/joda/time/format/PeriodFormatter;

    .line 208
    if-eqz v0, :cond_0

    .line 209
    goto :goto_0

    .line 208
    :cond_0
    move-object v0, v1

    .line 212
    :cond_1
    :goto_0
    return-object v0
.end method
