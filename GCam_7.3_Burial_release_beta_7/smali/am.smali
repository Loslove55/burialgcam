.class final Lam;
.super Ljava/lang/Object;

# interfaces
.implements Lw;


# instance fields
.field private final a:Ls;


# direct methods
.method public constructor <init>(Ls;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lam;->a:Ls;

    return-void
.end method


# virtual methods
.method public final a(Ly;Lt;)V
    .locals 0

    iget-object p1, p0, Lam;->a:Ls;

    invoke-interface {p1}, Ls;->a()V

    iget-object p1, p0, Lam;->a:Ls;

    invoke-interface {p1}, Ls;->a()V

    return-void
.end method
