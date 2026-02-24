import numpy as np
from scipy.signal import firwin
import matplotlib.pyplot as plt

# Sampling rate and cutoff frequencies
fs = 20000  # Sampling rate in Hz
lowcut = 5000  # Low cutoff frequency in Hz
highcut = 10000  # High cutoff frequency in Hz

# Normalized cutoff frequencies (relative to Nyquist frequency)
nyquist = 0.5 * fs
low = lowcut / nyquist
high = highcut / nyquist

# Number of taps (filter order)
numtaps = 21

# Design the bandpass filter using the firwin function
coeffs = firwin(numtaps, [low, high], pass_zero=False)

# Display the coefficients
print("Filter Coefficients:")
print(coeffs)

# Optional: Plot the filter response
from scipy.signal import freqz

w, h = freqz(coeffs, worN=8000)
plt.plot((w / np.pi) * nyquist, abs(h), 'b')
plt.plot([lowcut, highcut], [np.sqrt(0.5), np.sqrt(0.5)], '--', label='Bandpass Range')
plt.xlabel('Frequency (Hz)')
plt.ylabel('Gain')
plt.grid(True)
plt.legend(loc='best')
plt.title('Bandpass Filter Frequency Response')
plt.show()