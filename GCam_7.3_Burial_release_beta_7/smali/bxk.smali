.class public final Lbxk;
.super Ljava/lang/Object;

# interfaces
.implements Lbxi;


# instance fields
.field private final a:Landroid/util/Range;

.field private final b:Loac;

.field private final c:Z


# direct methods
.method public constructor <init>(Landroid/util/Range;Loac;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbxk;->a:Landroid/util/Range;

    iput-object p2, p0, Lbxk;->b:Loac;

    iput-boolean p3, p0, Lbxk;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Landroid/util/Range;
    .locals 1

    iget-boolean v0, p0, Lbxk;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbxk;->b:Loac;

    invoke-virtual {v0}, Loac;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbxk;->b:Loac;

    invoke-virtual {v0}, Loac;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    return-object v0

    :cond_0
    iget-object v0, p0, Lbxk;->a:Landroid/util/Range;

    return-object v0
.end method

.method public final b()Landroid/util/Range;
    .locals 1

    iget-boolean v0, p0, Lbxk;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbxk;->b:Loac;

    invoke-virtual {v0}, Loac;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbxk;->b:Loac;

    invoke-virtual {v0}, Loac;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    return-object v0

    :cond_0
    iget-object v0, p0, Lbxk;->a:Landroid/util/Range;

    return-object v0
.end method
