.class public final synthetic Lbvu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lbvw;


# direct methods
.method public constructor <init>(Lbvw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbvu;->a:Lbvw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbvu;->a:Lbvw;

    iget-object v0, v0, Lbvw;->q:Lcee;

    invoke-interface {v0}, Lcee;->f()V

    return-void
.end method
