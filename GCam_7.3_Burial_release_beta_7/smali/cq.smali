.class public final Lcq;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcq;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcr;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcq;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x1

    :goto_0
    iget v3, v1, Lcr;->e:I

    const/4 v4, 0x0

    const/4 v5, 0x6

    if-ge v2, v3, :cond_2

    iget-object v3, v1, Lcr;->g:Lcp;

    iget-object v3, v3, Lcp;->c:[Lcu;

    aget-object v3, v3, v2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    iget-object v7, v3, Lcu;->e:[F

    aput v4, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    iget-object v4, v3, Lcu;->e:[F

    iget v5, v3, Lcu;->c:I

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    iget v4, v3, Lcu;->h:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    iget-object v4, v0, Lcq;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcq;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_7

    iget-object v7, v0, Lcq;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcu;

    iget v8, v7, Lcu;->b:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_6

    iget-object v9, v1, Lcr;->c:[Lco;

    aget-object v8, v9, v8

    iget-object v8, v8, Lco;->d:Lcn;

    iget v9, v8, Lcn;->a:I

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_5

    invoke-virtual {v8, v10}, Lcn;->a(I)Lcu;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v8, v10}, Lcn;->b(I)F

    move-result v12

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v5, :cond_3

    iget-object v14, v11, Lcu;->e:[F

    aget v15, v14, v13

    iget-object v6, v7, Lcu;->e:[F

    aget v6, v6, v13

    mul-float v6, v6, v12

    add-float/2addr v15, v6

    aput v15, v14, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_3
    iget-object v6, v0, Lcq;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v0, Lcq;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_6

    iget-object v8, v7, Lcu;->e:[F

    aput v4, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcq;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Goal: "

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lcq;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcu;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    :goto_1
    iget-object v7, v4, Lcu;->e:[F

    array-length v7, v7

    if-ge v6, v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcu;->e:[F

    aget v2, v2, v6

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v7, v4, Lcu;->e:[F

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method
