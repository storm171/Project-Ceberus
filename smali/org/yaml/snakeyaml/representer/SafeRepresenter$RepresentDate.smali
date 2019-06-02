.class public Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;
.super Ljava/lang/Object;
.source "SafeRepresenter.java"

# interfaces
.implements Lorg/yaml/snakeyaml/representer/Represent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/representer/SafeRepresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RepresentDate"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;


# direct methods
.method protected constructor <init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 23
    .param p1, "data"    # Ljava/lang/Object;

    .line 327
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Ljava/util/Calendar;

    const-string v3, "UTC"

    if-eqz v2, :cond_0

    .line 328
    move-object v2, v1

    check-cast v2, Ljava/util/Calendar;

    .local v2, "calendar":Ljava/util/Calendar;
    goto :goto_1

    .line 330
    .end local v2    # "calendar":Ljava/util/Calendar;
    :cond_0
    iget-object v2, v0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    iget-object v2, v2, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->timeZone:Ljava/util/TimeZone;

    :goto_0
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 332
    .restart local v2    # "calendar":Ljava/util/Calendar;
    move-object v4, v1

    check-cast v4, Ljava/util/Date;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 334
    :goto_1
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 335
    .local v5, "years":I
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v4

    .line 336
    .local v7, "months":I
    const/4 v8, 0x5

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 337
    .local v9, "days":I
    const/16 v10, 0xb

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 338
    .local v10, "hour24":I
    const/16 v11, 0xc

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 339
    .local v11, "minutes":I
    const/16 v12, 0xd

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 340
    .local v12, "seconds":I
    const/16 v13, 0xe

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 341
    .local v14, "millis":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v13, v15

    .line 342
    .local v13, "buffer":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    const/4 v8, 0x4

    const/4 v6, 0x0

    const-string v4, "0"

    if-ge v15, v8, :cond_2

    .line 344
    invoke-virtual {v13, v6, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    const/4 v6, 0x2

    const/4 v8, 0x5

    goto :goto_2

    .line 346
    :cond_2
    const-string v8, "-"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const/16 v15, 0xa

    if-ge v7, v15, :cond_3

    .line 348
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_3
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    if-ge v9, v15, :cond_4

    .line 353
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_4
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v6, "T"

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    if-ge v10, v15, :cond_5

    .line 358
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :cond_5
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v6, ":"

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    if-ge v11, v15, :cond_6

    .line 363
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_6
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    if-ge v12, v15, :cond_7

    .line 368
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_7
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    if-lez v14, :cond_a

    .line 372
    if-ge v14, v15, :cond_8

    .line 373
    const-string v8, ".00"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 374
    :cond_8
    const/16 v8, 0x64

    if-ge v14, v8, :cond_9

    .line 375
    const-string v8, ".0"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 377
    :cond_9
    const-string v8, "."

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    :goto_3
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_a
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 382
    const-string v3, "Z"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v2

    goto/16 :goto_6

    .line 385
    :cond_b
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v19

    const/4 v1, 0x5

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v20

    const/4 v1, 0x7

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v21

    const/16 v1, 0xe

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v22

    move-object/from16 v16, v3

    move/from16 v17, v8

    move/from16 v18, v15

    invoke-virtual/range {v16 .. v22}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v1

    .line 389
    .local v1, "gmtOffset":I
    const v3, 0xea60

    div-int v3, v1, v3

    .line 390
    .local v3, "minutesOffset":I
    div-int/lit8 v8, v3, 0x3c

    .line 391
    .local v8, "hoursOffset":I
    rem-int/lit8 v15, v3, 0x3c

    .line 392
    .local v15, "partOfHour":I
    move/from16 v16, v1

    .end local v1    # "gmtOffset":I
    .local v16, "gmtOffset":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v8, :cond_c

    const-string v17, "+"

    goto :goto_4

    :cond_c
    const-string v17, ""

    :goto_4
    move-object/from16 v18, v2

    move-object/from16 v2, v17

    .end local v2    # "calendar":Ljava/util/Calendar;
    .local v18, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    if-ge v15, v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_d
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .end local v3    # "minutesOffset":I
    .end local v8    # "hoursOffset":I
    .end local v15    # "partOfHour":I
    .end local v16    # "gmtOffset":I
    :goto_6
    iget-object v1, v0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lorg/yaml/snakeyaml/nodes/Tag;->TIMESTAMP:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v1, v2, v3}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->getTag(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representScalar(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/String;Ljava/lang/Character;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    return-object v1
.end method
