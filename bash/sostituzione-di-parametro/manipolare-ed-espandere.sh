# $parametro oppure ${parametro}.
# In alcuni contesti funziona solo la seconda versione.

PARAM="X"
echo "$PARAM"
echo "${PARAM}"

# Può essere utilizzato per concatenare delle stringhe alle variabili.
your_id=${USER}-on-${HOSTNAME}
echo "$your_id"
